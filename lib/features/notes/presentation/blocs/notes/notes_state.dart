part of 'notes_bloc.dart';

@freezed
abstract class NotesState with _$NotesState {
  const factory NotesState({
    @required List<Note> listNotes,
  }) = _NoteState;

  const factory NotesState.error({
    @Default("") String message,
  }) = _ErrorNotesState;

  factory NotesState.initial() => const NotesState(listNotes: []);
}
