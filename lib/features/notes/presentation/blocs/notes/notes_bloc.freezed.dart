// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NotesEventTearOff {
  const _$NotesEventTearOff();

// ignore: unused_element
  _LoadEvent load({bool isDone}) {
    return _LoadEvent(
      isDone: isDone,
    );
  }

// ignore: unused_element
  _InsertEvent insert({@required Note note}) {
    return _InsertEvent(
      note: note,
    );
  }

// ignore: unused_element
  _RemoveEvent remove({@required Note note}) {
    return _RemoveEvent(
      note: note,
    );
  }

// ignore: unused_element
  _CheckIsDoneEvent checkIsDone({@required Note note}) {
    return _CheckIsDoneEvent(
      note: note,
    );
  }
}

// ignore: unused_element
const $NotesEvent = _$NotesEventTearOff();

mixin _$NotesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(bool isDone),
    @required Result insert(Note note),
    @required Result remove(Note note),
    @required Result checkIsDone(Note note),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(bool isDone),
    Result insert(Note note),
    Result remove(Note note),
    Result checkIsDone(Note note),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadEvent value),
    @required Result insert(_InsertEvent value),
    @required Result remove(_RemoveEvent value),
    @required Result checkIsDone(_CheckIsDoneEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadEvent value),
    Result insert(_InsertEvent value),
    Result remove(_RemoveEvent value),
    Result checkIsDone(_CheckIsDoneEvent value),
    @required Result orElse(),
  });
}

abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res>;
}

class _$NotesEventCopyWithImpl<$Res> implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  final NotesEvent _value;
  // ignore: unused_field
  final $Res Function(NotesEvent) _then;
}

abstract class _$LoadEventCopyWith<$Res> {
  factory _$LoadEventCopyWith(
          _LoadEvent value, $Res Function(_LoadEvent) then) =
      __$LoadEventCopyWithImpl<$Res>;
  $Res call({bool isDone});
}

class __$LoadEventCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$LoadEventCopyWith<$Res> {
  __$LoadEventCopyWithImpl(_LoadEvent _value, $Res Function(_LoadEvent) _then)
      : super(_value, (v) => _then(v as _LoadEvent));

  @override
  _LoadEvent get _value => super._value as _LoadEvent;

  @override
  $Res call({
    Object isDone = freezed,
  }) {
    return _then(_LoadEvent(
      isDone: isDone == freezed ? _value.isDone : isDone as bool,
    ));
  }
}

class _$_LoadEvent implements _LoadEvent {
  const _$_LoadEvent({this.isDone});

  @override
  final bool isDone;

  @override
  String toString() {
    return 'NotesEvent.load(isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadEvent &&
            (identical(other.isDone, isDone) ||
                const DeepCollectionEquality().equals(other.isDone, isDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isDone);

  @override
  _$LoadEventCopyWith<_LoadEvent> get copyWith =>
      __$LoadEventCopyWithImpl<_LoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(bool isDone),
    @required Result insert(Note note),
    @required Result remove(Note note),
    @required Result checkIsDone(Note note),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    assert(checkIsDone != null);
    return load(isDone);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(bool isDone),
    Result insert(Note note),
    Result remove(Note note),
    Result checkIsDone(Note note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(isDone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadEvent value),
    @required Result insert(_InsertEvent value),
    @required Result remove(_RemoveEvent value),
    @required Result checkIsDone(_CheckIsDoneEvent value),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    assert(checkIsDone != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadEvent value),
    Result insert(_InsertEvent value),
    Result remove(_RemoveEvent value),
    Result checkIsDone(_CheckIsDoneEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadEvent implements NotesEvent {
  const factory _LoadEvent({bool isDone}) = _$_LoadEvent;

  bool get isDone;
  _$LoadEventCopyWith<_LoadEvent> get copyWith;
}

abstract class _$InsertEventCopyWith<$Res> {
  factory _$InsertEventCopyWith(
          _InsertEvent value, $Res Function(_InsertEvent) then) =
      __$InsertEventCopyWithImpl<$Res>;
  $Res call({Note note});
}

class __$InsertEventCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$InsertEventCopyWith<$Res> {
  __$InsertEventCopyWithImpl(
      _InsertEvent _value, $Res Function(_InsertEvent) _then)
      : super(_value, (v) => _then(v as _InsertEvent));

  @override
  _InsertEvent get _value => super._value as _InsertEvent;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_InsertEvent(
      note: note == freezed ? _value.note : note as Note,
    ));
  }
}

class _$_InsertEvent implements _InsertEvent {
  const _$_InsertEvent({@required this.note}) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent.insert(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InsertEvent &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$InsertEventCopyWith<_InsertEvent> get copyWith =>
      __$InsertEventCopyWithImpl<_InsertEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(bool isDone),
    @required Result insert(Note note),
    @required Result remove(Note note),
    @required Result checkIsDone(Note note),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    assert(checkIsDone != null);
    return insert(note);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(bool isDone),
    Result insert(Note note),
    Result remove(Note note),
    Result checkIsDone(Note note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insert != null) {
      return insert(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadEvent value),
    @required Result insert(_InsertEvent value),
    @required Result remove(_RemoveEvent value),
    @required Result checkIsDone(_CheckIsDoneEvent value),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    assert(checkIsDone != null);
    return insert(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadEvent value),
    Result insert(_InsertEvent value),
    Result remove(_RemoveEvent value),
    Result checkIsDone(_CheckIsDoneEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insert != null) {
      return insert(this);
    }
    return orElse();
  }
}

abstract class _InsertEvent implements NotesEvent {
  const factory _InsertEvent({@required Note note}) = _$_InsertEvent;

  Note get note;
  _$InsertEventCopyWith<_InsertEvent> get copyWith;
}

abstract class _$RemoveEventCopyWith<$Res> {
  factory _$RemoveEventCopyWith(
          _RemoveEvent value, $Res Function(_RemoveEvent) then) =
      __$RemoveEventCopyWithImpl<$Res>;
  $Res call({Note note});
}

class __$RemoveEventCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$RemoveEventCopyWith<$Res> {
  __$RemoveEventCopyWithImpl(
      _RemoveEvent _value, $Res Function(_RemoveEvent) _then)
      : super(_value, (v) => _then(v as _RemoveEvent));

  @override
  _RemoveEvent get _value => super._value as _RemoveEvent;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_RemoveEvent(
      note: note == freezed ? _value.note : note as Note,
    ));
  }
}

class _$_RemoveEvent implements _RemoveEvent {
  const _$_RemoveEvent({@required this.note}) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent.remove(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveEvent &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$RemoveEventCopyWith<_RemoveEvent> get copyWith =>
      __$RemoveEventCopyWithImpl<_RemoveEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(bool isDone),
    @required Result insert(Note note),
    @required Result remove(Note note),
    @required Result checkIsDone(Note note),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    assert(checkIsDone != null);
    return remove(note);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(bool isDone),
    Result insert(Note note),
    Result remove(Note note),
    Result checkIsDone(Note note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadEvent value),
    @required Result insert(_InsertEvent value),
    @required Result remove(_RemoveEvent value),
    @required Result checkIsDone(_CheckIsDoneEvent value),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    assert(checkIsDone != null);
    return remove(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadEvent value),
    Result insert(_InsertEvent value),
    Result remove(_RemoveEvent value),
    Result checkIsDone(_CheckIsDoneEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _RemoveEvent implements NotesEvent {
  const factory _RemoveEvent({@required Note note}) = _$_RemoveEvent;

  Note get note;
  _$RemoveEventCopyWith<_RemoveEvent> get copyWith;
}

abstract class _$CheckIsDoneEventCopyWith<$Res> {
  factory _$CheckIsDoneEventCopyWith(
          _CheckIsDoneEvent value, $Res Function(_CheckIsDoneEvent) then) =
      __$CheckIsDoneEventCopyWithImpl<$Res>;
  $Res call({Note note});
}

class __$CheckIsDoneEventCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res>
    implements _$CheckIsDoneEventCopyWith<$Res> {
  __$CheckIsDoneEventCopyWithImpl(
      _CheckIsDoneEvent _value, $Res Function(_CheckIsDoneEvent) _then)
      : super(_value, (v) => _then(v as _CheckIsDoneEvent));

  @override
  _CheckIsDoneEvent get _value => super._value as _CheckIsDoneEvent;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_CheckIsDoneEvent(
      note: note == freezed ? _value.note : note as Note,
    ));
  }
}

class _$_CheckIsDoneEvent implements _CheckIsDoneEvent {
  const _$_CheckIsDoneEvent({@required this.note}) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent.checkIsDone(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CheckIsDoneEvent &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$CheckIsDoneEventCopyWith<_CheckIsDoneEvent> get copyWith =>
      __$CheckIsDoneEventCopyWithImpl<_CheckIsDoneEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(bool isDone),
    @required Result insert(Note note),
    @required Result remove(Note note),
    @required Result checkIsDone(Note note),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    assert(checkIsDone != null);
    return checkIsDone(note);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(bool isDone),
    Result insert(Note note),
    Result remove(Note note),
    Result checkIsDone(Note note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIsDone != null) {
      return checkIsDone(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadEvent value),
    @required Result insert(_InsertEvent value),
    @required Result remove(_RemoveEvent value),
    @required Result checkIsDone(_CheckIsDoneEvent value),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    assert(checkIsDone != null);
    return checkIsDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadEvent value),
    Result insert(_InsertEvent value),
    Result remove(_RemoveEvent value),
    Result checkIsDone(_CheckIsDoneEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIsDone != null) {
      return checkIsDone(this);
    }
    return orElse();
  }
}

abstract class _CheckIsDoneEvent implements NotesEvent {
  const factory _CheckIsDoneEvent({@required Note note}) = _$_CheckIsDoneEvent;

  Note get note;
  _$CheckIsDoneEventCopyWith<_CheckIsDoneEvent> get copyWith;
}

class _$NotesStateTearOff {
  const _$NotesStateTearOff();

// ignore: unused_element
  _InitialState initial() {
    return const _InitialState();
  }

// ignore: unused_element
  _ShowState show({@required List<Note> listNotes}) {
    return _ShowState(
      listNotes: listNotes,
    );
  }

// ignore: unused_element
  _ErrorNotesState error({String message = ''}) {
    return _ErrorNotesState(
      message: message,
    );
  }
}

// ignore: unused_element
const $NotesState = _$NotesStateTearOff();

mixin _$NotesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result show(List<Note> listNotes),
    @required Result error(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result show(List<Note> listNotes),
    Result error(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result show(_ShowState value),
    @required Result error(_ErrorNotesState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result show(_ShowState value),
    Result error(_ErrorNotesState value),
    @required Result orElse(),
  });
}

abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res>;
}

class _$NotesStateCopyWithImpl<$Res> implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  final NotesState _value;
  // ignore: unused_field
  final $Res Function(NotesState) _then;
}

abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

class __$InitialStateCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$InitialStateCopyWith<$Res> {
  __$InitialStateCopyWithImpl(
      _InitialState _value, $Res Function(_InitialState) _then)
      : super(_value, (v) => _then(v as _InitialState));

  @override
  _InitialState get _value => super._value as _InitialState;
}

class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'NotesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result show(List<Note> listNotes),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(show != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result show(List<Note> listNotes),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result show(_ShowState value),
    @required Result error(_ErrorNotesState value),
  }) {
    assert(initial != null);
    assert(show != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result show(_ShowState value),
    Result error(_ErrorNotesState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements NotesState {
  const factory _InitialState() = _$_InitialState;
}

abstract class _$ShowStateCopyWith<$Res> {
  factory _$ShowStateCopyWith(
          _ShowState value, $Res Function(_ShowState) then) =
      __$ShowStateCopyWithImpl<$Res>;
  $Res call({List<Note> listNotes});
}

class __$ShowStateCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$ShowStateCopyWith<$Res> {
  __$ShowStateCopyWithImpl(_ShowState _value, $Res Function(_ShowState) _then)
      : super(_value, (v) => _then(v as _ShowState));

  @override
  _ShowState get _value => super._value as _ShowState;

  @override
  $Res call({
    Object listNotes = freezed,
  }) {
    return _then(_ShowState(
      listNotes:
          listNotes == freezed ? _value.listNotes : listNotes as List<Note>,
    ));
  }
}

class _$_ShowState implements _ShowState {
  const _$_ShowState({@required this.listNotes}) : assert(listNotes != null);

  @override
  final List<Note> listNotes;

  @override
  String toString() {
    return 'NotesState.show(listNotes: $listNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowState &&
            (identical(other.listNotes, listNotes) ||
                const DeepCollectionEquality()
                    .equals(other.listNotes, listNotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listNotes);

  @override
  _$ShowStateCopyWith<_ShowState> get copyWith =>
      __$ShowStateCopyWithImpl<_ShowState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result show(List<Note> listNotes),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(show != null);
    assert(error != null);
    return show(listNotes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result show(List<Note> listNotes),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(listNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result show(_ShowState value),
    @required Result error(_ErrorNotesState value),
  }) {
    assert(initial != null);
    assert(show != null);
    assert(error != null);
    return show(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result show(_ShowState value),
    Result error(_ErrorNotesState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class _ShowState implements NotesState {
  const factory _ShowState({@required List<Note> listNotes}) = _$_ShowState;

  List<Note> get listNotes;
  _$ShowStateCopyWith<_ShowState> get copyWith;
}

abstract class _$ErrorNotesStateCopyWith<$Res> {
  factory _$ErrorNotesStateCopyWith(
          _ErrorNotesState value, $Res Function(_ErrorNotesState) then) =
      __$ErrorNotesStateCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$ErrorNotesStateCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res>
    implements _$ErrorNotesStateCopyWith<$Res> {
  __$ErrorNotesStateCopyWithImpl(
      _ErrorNotesState _value, $Res Function(_ErrorNotesState) _then)
      : super(_value, (v) => _then(v as _ErrorNotesState));

  @override
  _ErrorNotesState get _value => super._value as _ErrorNotesState;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ErrorNotesState(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_ErrorNotesState implements _ErrorNotesState {
  const _$_ErrorNotesState({this.message = ''}) : assert(message != null);

  @JsonKey(defaultValue: '')
  @override
  final String message;

  @override
  String toString() {
    return 'NotesState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorNotesState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$ErrorNotesStateCopyWith<_ErrorNotesState> get copyWith =>
      __$ErrorNotesStateCopyWithImpl<_ErrorNotesState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result show(List<Note> listNotes),
    @required Result error(String message),
  }) {
    assert(initial != null);
    assert(show != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result show(List<Note> listNotes),
    Result error(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result show(_ShowState value),
    @required Result error(_ErrorNotesState value),
  }) {
    assert(initial != null);
    assert(show != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result show(_ShowState value),
    Result error(_ErrorNotesState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorNotesState implements NotesState {
  const factory _ErrorNotesState({String message}) = _$_ErrorNotesState;

  String get message;
  _$ErrorNotesStateCopyWith<_ErrorNotesState> get copyWith;
}
