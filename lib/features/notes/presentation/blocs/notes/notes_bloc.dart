import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/notes/domain/entities/note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/add_note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/delete_note.dart';
import 'package:flutter_pattern_templates/features/notes/domain/use_cases/get_list_notes.dart';
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
    @required this.addNote,
    @required this.deleteNote,
  }) : super(NotesState.initial());

  final GetListNotes getListNotes;
  final AddNote addNote;
  final DeleteNote deleteNote;

  @override
  Stream<NotesState> mapEventToState(
    NotesEvent event,
  ) async* {
    yield* event.map(
      load: (event) async* {
        yield* _showListNotes();
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
    final result = await getListNotes(unit);
    yield result.fold(
      (failure) => const NotesState.error(
        message: "Unexpected error",
      ),
      (listNotes) => NotesState(
        listNotes: listNotes,
      ),
    );
  }
}
