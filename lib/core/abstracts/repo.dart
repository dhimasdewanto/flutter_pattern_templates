import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import 'failure.dart';

abstract class RepoApi<ReturnType, ParamType> {
  @protected
  Future<Either<Failure, ReturnType>> processCall(ParamType params);

  Future<Either<Failure, ReturnType>> call(ParamType params) async {
    final task = TaskEither.tryCatch(
      () => processCall(params),
      _errorToFailure,
    );
    final result = await task.run();
    return result.flatMap((value) => value);
  }
}

Failure _errorToFailure(Object error, StackTrace stackTrace) {
  if (error is DioError) {
    return Failure(
      message: error.toString(),
      error: error,
      stackTrace: stackTrace,
      httpError: error,
    );
  }

  return Failure(
    message: error.toString(),
    error: error,
    stackTrace: stackTrace,
  );
}
