part of 'notes_bloc.dart';

@freezed
abstract class NotesEvent with _$NotesEvent {
  const factory NotesEvent.load() = _LoadEvent;
  const factory NotesEvent.insert({
    @required Note note,
  }) = _InsertEvent;
  const factory NotesEvent.remove({
    @required Note note,
  }) = _RemoveEvent;
  const factory NotesEvent.checkIsDone({
    @required Note note,
  }) = _CheckIsDoneEvent;
}
