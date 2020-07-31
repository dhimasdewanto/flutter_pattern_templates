import 'package:flutter_pattern_templates/core/utils/i_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailures with _$AuthFailures implements IFailure {
  const factory AuthFailures.unexpected([String message]) = _AuthFailures;
}