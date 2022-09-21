import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

/// Usecase for return [Either] with [Params].
abstract class EitherCase<Type, Params> {
  @protected
  Either<String, Type> processCall(Params params);

  Either<String, Type> call(Params params) {
    try {
      return processCall(params);
    } catch (e) {
      return Left("Catch Error: $e");
    }
  }
}


/// Usecase for return [Either] without `Params`.
abstract class EitherCaseNP<Type> {
  @protected
  Either<String, Type> processCall();

  Either<String, Type> call() {
    try {
      return processCall();
    } catch (e) {
      return Left("Catch Error: $e");
    }
  }
}

/// Usecase for return [Future] [Either] with [Params].
abstract class EitherCaseFuture<Type, Params> {
  @protected
  Future<Either<String, Type>> processCall(Params params);

  Future<Either<String, Type>> call(Params params) async {
    try {
      return await processCall(params);
    } catch (e) {
      return Left("Catch Error: $e");
    }
  }
}

/// Usecase for return [Future] [Either] without `Params`.
abstract class EitherCaseFutureNP<Type> {
  @protected
  Future<Either<String, Type>> processCall();

  Future<Either<String, Type>> call() async {
    try {
      return await processCall();
    } catch (e) {
      return Left("Catch Error: $e");
    }
  }
}

/// Usecase for return [Option] with [Params].
abstract class OptionCase<Params> {
  @protected
  Either<String, Type> processCall(Params params);

  Either<String, Type> call(Params params) {
    try {
      return processCall(params);
    } catch (e) {
      return Left("Catch Error: $e");
    }
  }
}

/// Usecase for return [Future] [Option] with [Params].
abstract class OptionCaseFuture<Params> {
  @protected
  Future<Option<String>> processCall(Params params);

  Future<Option<String>> call(Params params) async {
    try {
      return await processCall(params);
    } catch (e) {
      return Some("Catch Error: $e");
    }
  }
}