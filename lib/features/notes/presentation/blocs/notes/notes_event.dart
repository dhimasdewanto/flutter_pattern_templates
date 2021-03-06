part of 'notes_bloc.dart';

@freezed
abstract class NotesEvent with _$NotesEvent {
  const factory NotesEvent.load({
    bool isDone,
  }) = _LoadEvent;
  const factory NotesEvent.insert({
    @required String body,
  }) = _InsertEvent;
  const factory NotesEvent.remove({
    @required Note note,
  }) = _RemoveEvent;
  const factory NotesEvent.checkIsDone({
    @required Note note,
  }) = _CheckIsDoneEvent;
}
