// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailuresTearOff {
  const _$AuthFailuresTearOff();

// ignore: unused_element
  _AuthFailures unexpected([String message]) {
    return _AuthFailures(
      message,
    );
  }
}

// ignore: unused_element
const $AuthFailures = _$AuthFailuresTearOff();

mixin _$AuthFailures {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_AuthFailures value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_AuthFailures value),
    @required Result orElse(),
  });

  $AuthFailuresCopyWith<AuthFailures> get copyWith;
}

abstract class $AuthFailuresCopyWith<$Res> {
  factory $AuthFailuresCopyWith(
          AuthFailures value, $Res Function(AuthFailures) then) =
      _$AuthFailuresCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$AuthFailuresCopyWithImpl<$Res> implements $AuthFailuresCopyWith<$Res> {
  _$AuthFailuresCopyWithImpl(this._value, this._then);

  final AuthFailures _value;
  // ignore: unused_field
  final $Res Function(AuthFailures) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$AuthFailuresCopyWith<$Res>
    implements $AuthFailuresCopyWith<$Res> {
  factory _$AuthFailuresCopyWith(
          _AuthFailures value, $Res Function(_AuthFailures) then) =
      __$AuthFailuresCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class __$AuthFailuresCopyWithImpl<$Res> extends _$AuthFailuresCopyWithImpl<$Res>
    implements _$AuthFailuresCopyWith<$Res> {
  __$AuthFailuresCopyWithImpl(
      _AuthFailures _value, $Res Function(_AuthFailures) _then)
      : super(_value, (v) => _then(v as _AuthFailures));

  @override
  _AuthFailures get _value => super._value as _AuthFailures;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_AuthFailures(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_AuthFailures implements _AuthFailures {
  const _$_AuthFailures([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailures.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFailures &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$AuthFailuresCopyWith<_AuthFailures> get copyWith =>
      __$AuthFailuresCopyWithImpl<_AuthFailures>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(String message),
  }) {
    assert(unexpected != null);
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_AuthFailures value),
  }) {
    assert(unexpected != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_AuthFailures value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _AuthFailures implements AuthFailures {
  const factory _AuthFailures([String message]) = _$_AuthFailures;

  @override
  String get message;
  @override
  _$AuthFailuresCopyWith<_AuthFailures> get copyWith;
}
