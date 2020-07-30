import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/note.dart';
import '../../../domain/failures/notes_failures.dart';
import '../../../domain/use_cases/add_note.dart';
import '../../../domain/use_cases/check_is_done.dart';
import '../../../domain/use_cases/delete_note.dart';
import '../../../domain/use_cases/get_list_notes.dart';
import '../../../domain/use_cases/get_list_notes_filter.dart';

part 'notes_bloc.freezed.dart';
part 'notes_event.dart';
part 'notes_state.dart';

@injectable
class NotesBloc extends Bloc<NotesEvent, NotesState> {
  NotesBloc({
    @required this.getListNotes,
    @required this.getListNotesFilter,
    @required this.addNote,
    @required this.deleteNote,
    @required this.checkIsDone,
  }) : super(const NotesState.initial());

  final GetListNotes getListNotes;
  final GetListNotesFilter getListNotesFilter;
  final AddNote addNote;
  final DeleteNote deleteNote;
  final CheckIsDone checkIsDone;

  bool _isDone;

  @override
  Stream<NotesState> mapEventToState(
    NotesEvent event,
  ) async* {
    yield* event.map(
      load: (event) async* {
        _isDone = event.isDone;
        yield* _showListNotes();
      },
      checkIsDone: (event) async* {
        final result = await checkIsDone(event.note);
        yield* result.fold(
          (failure) async* {
            yield const NotesState.error(
              message: "Unexpected error",
            );
          },
          (_) => _showCheckIsDoneListNotes(event),
        );
      },
      insert: (event) async* {
        final result = await addNote(event.body);
        yield* result.fold(
          (failure) async* {
            yield failure.when(
              emptyBody: () => const NotesState.error(
                message: "Body cannot be empty",
              ),
              unexpected: () => const NotesState.error(
                message: "Unexpected error",
              ),
            );
          },
          (_) => _showListNotes(),
        );
      },
      remove: (event) async* {
        final result = await deleteNote(event.note);
        yield* result.fold(
          (failure) async* {
            yield const NotesState.error(
              message: "Unexpected error",
            );
          },
          (_) => _showListNotes(),
        );
      },
    );
  }

  Stream<NotesState> _showCheckIsDoneListNotes(_CheckIsDoneEvent event) async* {
    final listNotes = List<Note>.from((state as _ShowState).listNotes);
    final replacedIndex = listNotes.indexWhere(
      (note) => note.id == event.note.id,
    );
    listNotes.replaceRange(
      replacedIndex,
      replacedIndex + 1,
      [event.note],
    );
    yield NotesState.show(
      listNotes: listNotes,
    );
  }

  Stream<NotesState> _showListNotes() async* {
    final result = await _getListNotesResult();

    yield result.fold(
      (failure) => const NotesState.error(
        message: "Unexpected error",
      ),
      (listNotes) => NotesState.show(
        listNotes: listNotes,
      ),
    );
  }

  Future<Either<NotesFailures, List<Note>>> _getListNotesResult() async {
    if (_isDone != null) {
      return getListNotesFilter(
        GetListNotesFilterParams(
          isDone: _isDone,
        ),
      );
    }
    return getListNotes(unit);
  }
}
