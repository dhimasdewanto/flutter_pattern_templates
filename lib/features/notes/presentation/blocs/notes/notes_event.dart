part of 'notes_bloc.dart';

@freezed
abstract class NotesEvent with _$NotesEvent {
  const factory NotesEvent.load() = _Load;
  const factory NotesEvent.insert({
    @required Note note,
  }) = _Insert;
  const factory NotesEvent.remove({
    @required Note note,
  }) = _Remove;
}
