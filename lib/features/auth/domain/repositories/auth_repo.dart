import 'package:dartz/dartz.dart';

import '../failures/auth_failures.dart';

abstract class AuthRepo {
  Future<Either<AuthFailures, bool>> isLoggedIn();
  Future<Either<AuthFailures, Unit>> login(String username);
  Future<Either<AuthFailures, Unit>> logout();
}