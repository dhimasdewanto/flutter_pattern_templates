part of 'notes_bloc.dart';

@freezed
abstract class NotesState with _$NotesState {
  const factory NotesState.initial() = _InitialState;

  const factory NotesState.show({
    @required List<Note> listNotes,
  }) = _ShowState;

  const factory NotesState.error({
    @Default("") String message,
  }) = _ErrorNotesState;
}
