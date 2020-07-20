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
  _Load load() {
    return const _Load();
  }

// ignore: unused_element
  _Insert insert({@required Note note}) {
    return _Insert(
      note: note,
    );
  }

// ignore: unused_element
  _Remove remove({@required Note note}) {
    return _Remove(
      note: note,
    );
  }
}

// ignore: unused_element
const $NotesEvent = _$NotesEventTearOff();

mixin _$NotesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result insert(Note note),
    @required Result remove(Note note),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result insert(Note note),
    Result remove(Note note),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result insert(_Insert value),
    @required Result remove(_Remove value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result insert(_Insert value),
    Result remove(_Remove value),
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

abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

class __$LoadCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;
}

class _$_Load implements _Load {
  const _$_Load();

  @override
  String toString() {
    return 'NotesEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result insert(Note note),
    @required Result remove(Note note),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result insert(Note note),
    Result remove(Note note),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_Load value),
    @required Result insert(_Insert value),
    @required Result remove(_Remove value),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result insert(_Insert value),
    Result remove(_Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements NotesEvent {
  const factory _Load() = _$_Load;
}

abstract class _$InsertCopyWith<$Res> {
  factory _$InsertCopyWith(_Insert value, $Res Function(_Insert) then) =
      __$InsertCopyWithImpl<$Res>;
  $Res call({Note note});
}

class __$InsertCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$InsertCopyWith<$Res> {
  __$InsertCopyWithImpl(_Insert _value, $Res Function(_Insert) _then)
      : super(_value, (v) => _then(v as _Insert));

  @override
  _Insert get _value => super._value as _Insert;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_Insert(
      note: note == freezed ? _value.note : note as Note,
    ));
  }
}

class _$_Insert implements _Insert {
  const _$_Insert({@required this.note}) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent.insert(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Insert &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$InsertCopyWith<_Insert> get copyWith =>
      __$InsertCopyWithImpl<_Insert>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result insert(Note note),
    @required Result remove(Note note),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    return insert(note);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result insert(Note note),
    Result remove(Note note),
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
    @required Result load(_Load value),
    @required Result insert(_Insert value),
    @required Result remove(_Remove value),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    return insert(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result insert(_Insert value),
    Result remove(_Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insert != null) {
      return insert(this);
    }
    return orElse();
  }
}

abstract class _Insert implements NotesEvent {
  const factory _Insert({@required Note note}) = _$_Insert;

  Note get note;
  _$InsertCopyWith<_Insert> get copyWith;
}

abstract class _$RemoveCopyWith<$Res> {
  factory _$RemoveCopyWith(_Remove value, $Res Function(_Remove) then) =
      __$RemoveCopyWithImpl<$Res>;
  $Res call({Note note});
}

class __$RemoveCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements _$RemoveCopyWith<$Res> {
  __$RemoveCopyWithImpl(_Remove _value, $Res Function(_Remove) _then)
      : super(_value, (v) => _then(v as _Remove));

  @override
  _Remove get _value => super._value as _Remove;

  @override
  $Res call({
    Object note = freezed,
  }) {
    return _then(_Remove(
      note: note == freezed ? _value.note : note as Note,
    ));
  }
}

class _$_Remove implements _Remove {
  const _$_Remove({@required this.note}) : assert(note != null);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent.remove(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Remove &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(note);

  @override
  _$RemoveCopyWith<_Remove> get copyWith =>
      __$RemoveCopyWithImpl<_Remove>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result insert(Note note),
    @required Result remove(Note note),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    return remove(note);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result insert(Note note),
    Result remove(Note note),
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
    @required Result load(_Load value),
    @required Result insert(_Insert value),
    @required Result remove(_Remove value),
  }) {
    assert(load != null);
    assert(insert != null);
    assert(remove != null);
    return remove(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_Load value),
    Result insert(_Insert value),
    Result remove(_Remove value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _Remove implements NotesEvent {
  const factory _Remove({@required Note note}) = _$_Remove;

  Note get note;
  _$RemoveCopyWith<_Remove> get copyWith;
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
