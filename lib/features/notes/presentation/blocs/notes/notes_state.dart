part of 'notes_bloc.dart';

@freezed
abstract class NotesState with _$NotesState {
  const factory NotesState({
    @required List<Note> listNotes,
  }) = _NoteState;

  factory NotesState.initial() => const NotesState(listNotes: []);
}
