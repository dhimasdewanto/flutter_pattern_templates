import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../failures/i_failure.dart';

/// Interface of use case.
/// Implement this to create use case.
///
/// [Type] is return type.
///
/// [Parameter] is parameter type. Use [Unit] to set empty parameter.
///
/// [Failure] is failure type. Import abstract [IFailure] and use it with sealed class.
abstract class UseCase<Type, Parameter, Failure extends IFailure> {
  /// Execute method without validation.
  @protected
  Future<Either<Failure, Type>> execute(Parameter params);

  /// Validate parameter, but doesn't interact with main method.
  Future<Either<Failure, Unit>> validate(Parameter params);

  /// Execute method with validation.
  Future<Either<Failure, Type>> call(Parameter params) async {
    final isValid = await validate(params);
    return isValid.fold(
      (failure) async => left(failure),
      (value) async => execute(params),
    );
  }
}
