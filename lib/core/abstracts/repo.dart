import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

class RepoNoCondition {
  const RepoNoCondition();
}

class RepoNoType {
  const RepoNoType();
}

/// Repo for GET method.
abstract class RepoGet<ReturnType, Condition> {
  @protected
  Future<Either<String, ReturnType>> processCall({
    Condition? condition,
  });

  Future<Either<String, ReturnType>> call({
    Condition? condition,
  }) async {
    try {
      return await processCall(
        condition: condition,
      );
    } catch (e) {
      return left("Catch Error: $e");
    }
  }
}

/// Repo for POST method.
abstract class RepoPost<ParamType, Condition> {
  @protected
  Future<Option<String>> processCall({
    required ParamType data,
    Condition? condition,
  });

  Future<Option<String>> call({
    required ParamType data,
    Condition? condition,
  }) async {
    try {
      return await processCall(
        data: data,
        condition: condition,
      );
    } catch (e) {
      return some("Catch Error: $e");
    }
  }
}

/// For some reason, POST method sometimes return
/// variable value. This repository is for it.
abstract class RepoPostReturn<ReturnType, ParamType, Condition> {
  @protected
  Future<Either<String, ReturnType>> processCall({
    required ParamType data,
    Condition? condition,
  });

  Future<Either<String, ReturnType>> call({
    required ParamType data,
    Condition? condition,
  }) async {
    try {
      return await processCall(
        data: data,
        condition: condition,
      );
    } catch (e) {
      return left("Catch Error: $e");
    }
  }
}