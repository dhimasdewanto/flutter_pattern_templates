import 'package:dio/dio.dart';

class Failure {
  Failure({
    required this.message,
    this.error,
    this.stackTrace,
    this.httpError,
  });

  final String message;

  final Object? error;

  final StackTrace? stackTrace;

  /// [httpError] is not `null`
  /// if there is something error when
  /// request http.
  final DioError? httpError;
}
