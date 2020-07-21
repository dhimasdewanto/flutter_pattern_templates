// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewsFailuresTearOff {
  const _$NewsFailuresTearOff();

// ignore: unused_element
  _InvalidPage invalidPage() {
    return const _InvalidPage();
  }

// ignore: unused_element
  _Unexpected unexpected() {
    return const _Unexpected();
  }
}

// ignore: unused_element
const $NewsFailures = _$NewsFailuresTearOff();

mixin _$NewsFailures {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPage(),
    @required Result unexpected(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPage(),
    Result unexpected(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPage(_InvalidPage value),
    @required Result unexpected(_Unexpected value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPage(_InvalidPage value),
    Result unexpected(_Unexpected value),
    @required Result orElse(),
  });
}

abstract class $NewsFailuresCopyWith<$Res> {
  factory $NewsFailuresCopyWith(
          NewsFailures value, $Res Function(NewsFailures) then) =
      _$NewsFailuresCopyWithImpl<$Res>;
}

class _$NewsFailuresCopyWithImpl<$Res> implements $NewsFailuresCopyWith<$Res> {
  _$NewsFailuresCopyWithImpl(this._value, this._then);

  final NewsFailures _value;
  // ignore: unused_field
  final $Res Function(NewsFailures) _then;
}

abstract class _$InvalidPageCopyWith<$Res> {
  factory _$InvalidPageCopyWith(
          _InvalidPage value, $Res Function(_InvalidPage) then) =
      __$InvalidPageCopyWithImpl<$Res>;
}

class __$InvalidPageCopyWithImpl<$Res> extends _$NewsFailuresCopyWithImpl<$Res>
    implements _$InvalidPageCopyWith<$Res> {
  __$InvalidPageCopyWithImpl(
      _InvalidPage _value, $Res Function(_InvalidPage) _then)
      : super(_value, (v) => _then(v as _InvalidPage));

  @override
  _InvalidPage get _value => super._value as _InvalidPage;
}

class _$_InvalidPage implements _InvalidPage {
  const _$_InvalidPage();

  @override
  String toString() {
    return 'NewsFailures.invalidPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPage(),
    @required Result unexpected(),
  }) {
    assert(invalidPage != null);
    assert(unexpected != null);
    return invalidPage();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPage(),
    Result unexpected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPage != null) {
      return invalidPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPage(_InvalidPage value),
    @required Result unexpected(_Unexpected value),
  }) {
    assert(invalidPage != null);
    assert(unexpected != null);
    return invalidPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPage(_InvalidPage value),
    Result unexpected(_Unexpected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPage != null) {
      return invalidPage(this);
    }
    return orElse();
  }
}

abstract class _InvalidPage implements NewsFailures {
  const factory _InvalidPage() = _$_InvalidPage;
}

abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

class __$UnexpectedCopyWithImpl<$Res> extends _$NewsFailuresCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'NewsFailures.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPage(),
    @required Result unexpected(),
  }) {
    assert(invalidPage != null);
    assert(unexpected != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPage(),
    Result unexpected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPage(_InvalidPage value),
    @required Result unexpected(_Unexpected value),
  }) {
    assert(invalidPage != null);
    assert(unexpected != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPage(_InvalidPage value),
    Result unexpected(_Unexpected value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements NewsFailures {
  const factory _Unexpected() = _$_Unexpected;
}
