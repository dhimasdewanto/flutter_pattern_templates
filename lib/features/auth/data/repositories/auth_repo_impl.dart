import 'package:dartz/dartz.dart';
import 'package:flutter_pattern_templates/features/auth/domain/failures/auth_failures.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/repositories/auth_repo.dart';
import '../data_source/auth_local.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  AuthRepoImpl({
    @required this.authLocal,
  });

  final AuthLocal authLocal;

  @override
  Future<Either<AuthFailures, bool>> isLoggedIn() async {
    try {
      final response = await authLocal.isLoggedIn();
      return right(response);
    } catch (e) {
      return left(AuthFailures.unexpected(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> login(String username) async {
    try {
      await authLocal.login(username);
      return right(unit);
    } catch (e) {
      return left(AuthFailures.unexpected(e.toString()));
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> logout() async {
    try {
      await authLocal.logout();
      return right(unit);
    } catch (e) {
      return left(AuthFailures.unexpected(e.toString()));
    }
  }
}
