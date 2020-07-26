import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/failures/notes_failures.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/add_note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/check_is_done.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/delete_note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/get_list_notes.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/get_list_notes_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

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
          (_) => _showListNotes(),
        );
      },
      insert: (event) async* {
        final result = await addNote(event.note);
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
