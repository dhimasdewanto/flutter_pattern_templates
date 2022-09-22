import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import 'failure.dart';

abstract class UseCase<ReturnType, ParamType> {
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
  return Failure(
    message: error.toString(),
    error: error,
    stackTrace: stackTrace,
  );
}
