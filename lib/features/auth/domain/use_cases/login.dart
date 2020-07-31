import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/utils/use_case.dart';
import '../failures/auth_failures.dart';
import '../repositories/auth_repo.dart';

@lazySingleton
class Login extends UseCase<Unit, String, AuthFailures> {
  Login({
    @required this.authRepo,
  });

  final AuthRepo authRepo;

  @override
  Future<Either<AuthFailures, Unit>> execute(String params) async {
    return authRepo.login(params);
  }

  @override
  Future<Either<AuthFailures, Unit>> validate(String params) async {
    return right(unit);
  }
}
