// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  _LoginEvent login(String username) {
    return _LoginEvent(
      username,
    );
  }

// ignore: unused_element
  _LogoutEvent logout() {
    return const _LogoutEvent();
  }

// ignore: unused_element
  _CheckIsLoggedInEvent checkIsLoggedIn() {
    return const _CheckIsLoggedInEvent();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(String username),
    @required Result logout(),
    @required Result checkIsLoggedIn(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(String username),
    Result logout(),
    Result checkIsLoggedIn(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class _$LoginEventCopyWith<$Res> {
  factory _$LoginEventCopyWith(
          _LoginEvent value, $Res Function(_LoginEvent) then) =
      __$LoginEventCopyWithImpl<$Res>;
  $Res call({String username});
}

class __$LoginEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LoginEventCopyWith<$Res> {
  __$LoginEventCopyWithImpl(
      _LoginEvent _value, $Res Function(_LoginEvent) _then)
      : super(_value, (v) => _then(v as _LoginEvent));

  @override
  _LoginEvent get _value => super._value as _LoginEvent;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_LoginEvent(
      username == freezed ? _value.username : username as String,
    ));
  }
}

class _$_LoginEvent implements _LoginEvent {
  const _$_LoginEvent(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'AuthEvent.login(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginEvent &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @override
  _$LoginEventCopyWith<_LoginEvent> get copyWith =>
      __$LoginEventCopyWithImpl<_LoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(String username),
    @required Result logout(),
    @required Result checkIsLoggedIn(),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return login(username);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(String username),
    Result logout(),
    Result checkIsLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginEvent implements AuthEvent {
  const factory _LoginEvent(String username) = _$_LoginEvent;

  String get username;
  _$LoginEventCopyWith<_LoginEvent> get copyWith;
}

abstract class _$LogoutEventCopyWith<$Res> {
  factory _$LogoutEventCopyWith(
          _LogoutEvent value, $Res Function(_LogoutEvent) then) =
      __$LogoutEventCopyWithImpl<$Res>;
}

class __$LogoutEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$LogoutEventCopyWith<$Res> {
  __$LogoutEventCopyWithImpl(
      _LogoutEvent _value, $Res Function(_LogoutEvent) _then)
      : super(_value, (v) => _then(v as _LogoutEvent));

  @override
  _LogoutEvent get _value => super._value as _LogoutEvent;
}

class _$_LogoutEvent implements _LogoutEvent {
  const _$_LogoutEvent();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(String username),
    @required Result logout(),
    @required Result checkIsLoggedIn(),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return logout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(String username),
    Result logout(),
    Result checkIsLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return logout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutEvent implements AuthEvent {
  const factory _LogoutEvent() = _$_LogoutEvent;
}

abstract class _$CheckIsLoggedInEventCopyWith<$Res> {
  factory _$CheckIsLoggedInEventCopyWith(_CheckIsLoggedInEvent value,
          $Res Function(_CheckIsLoggedInEvent) then) =
      __$CheckIsLoggedInEventCopyWithImpl<$Res>;
}

class __$CheckIsLoggedInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$CheckIsLoggedInEventCopyWith<$Res> {
  __$CheckIsLoggedInEventCopyWithImpl(
      _CheckIsLoggedInEvent _value, $Res Function(_CheckIsLoggedInEvent) _then)
      : super(_value, (v) => _then(v as _CheckIsLoggedInEvent));

  @override
  _CheckIsLoggedInEvent get _value => super._value as _CheckIsLoggedInEvent;
}

class _$_CheckIsLoggedInEvent implements _CheckIsLoggedInEvent {
  const _$_CheckIsLoggedInEvent();

  @override
  String toString() {
    return 'AuthEvent.checkIsLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckIsLoggedInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(String username),
    @required Result logout(),
    @required Result checkIsLoggedIn(),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return checkIsLoggedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(String username),
    Result logout(),
    Result checkIsLoggedIn(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIsLoggedIn != null) {
      return checkIsLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(_LoginEvent value),
    @required Result logout(_LogoutEvent value),
    @required Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
  }) {
    assert(login != null);
    assert(logout != null);
    assert(checkIsLoggedIn != null);
    return checkIsLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(_LoginEvent value),
    Result logout(_LogoutEvent value),
    Result checkIsLoggedIn(_CheckIsLoggedInEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIsLoggedIn != null) {
      return checkIsLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _CheckIsLoggedInEvent implements AuthEvent {
  const factory _CheckIsLoggedInEvent() = _$_CheckIsLoggedInEvent;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _LoggedInState loggedIn() {
    return const _LoggedInState();
  }

// ignore: unused_element
  _UnauthenticatedState unauthenticated() {
    return const _UnauthenticatedState();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loggedIn(),
    @required Result unauthenticated(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedIn(),
    Result unauthenticated(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedIn(_LoggedInState value),
    @required Result unauthenticated(_UnauthenticatedState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedIn(_LoggedInState value),
    Result unauthenticated(_UnauthenticatedState value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class _$LoggedInStateCopyWith<$Res> {
  factory _$LoggedInStateCopyWith(
          _LoggedInState value, $Res Function(_LoggedInState) then) =
      __$LoggedInStateCopyWithImpl<$Res>;
}

class __$LoggedInStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$LoggedInStateCopyWith<$Res> {
  __$LoggedInStateCopyWithImpl(
      _LoggedInState _value, $Res Function(_LoggedInState) _then)
      : super(_value, (v) => _then(v as _LoggedInState));

  @override
  _LoggedInState get _value => super._value as _LoggedInState;
}

class _$_LoggedInState implements _LoggedInState {
  const _$_LoggedInState();

  @override
  String toString() {
    return 'AuthState.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoggedInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loggedIn(),
    @required Result unauthenticated(),
  }) {
    assert(loggedIn != null);
    assert(unauthenticated != null);
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedIn(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedIn(_LoggedInState value),
    @required Result unauthenticated(_UnauthenticatedState value),
  }) {
    assert(loggedIn != null);
    assert(unauthenticated != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedIn(_LoggedInState value),
    Result unauthenticated(_UnauthenticatedState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedInState implements AuthState {
  const factory _LoggedInState() = _$_LoggedInState;
}

abstract class _$UnauthenticatedStateCopyWith<$Res> {
  factory _$UnauthenticatedStateCopyWith(_UnauthenticatedState value,
          $Res Function(_UnauthenticatedState) then) =
      __$UnauthenticatedStateCopyWithImpl<$Res>;
}

class __$UnauthenticatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedStateCopyWith<$Res> {
  __$UnauthenticatedStateCopyWithImpl(
      _UnauthenticatedState _value, $Res Function(_UnauthenticatedState) _then)
      : super(_value, (v) => _then(v as _UnauthenticatedState));

  @override
  _UnauthenticatedState get _value => super._value as _UnauthenticatedState;
}

class _$_UnauthenticatedState implements _UnauthenticatedState {
  const _$_UnauthenticatedState();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnauthenticatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loggedIn(),
    @required Result unauthenticated(),
  }) {
    assert(loggedIn != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedIn(),
    Result unauthenticated(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedIn(_LoggedInState value),
    @required Result unauthenticated(_UnauthenticatedState value),
  }) {
    assert(loggedIn != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedIn(_LoggedInState value),
    Result unauthenticated(_UnauthenticatedState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnauthenticatedState implements AuthState {
  const factory _UnauthenticatedState() = _$_UnauthenticatedState;
}
