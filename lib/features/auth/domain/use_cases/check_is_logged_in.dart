import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/utils/use_case.dart';
import '../failures/auth_failures.dart';
import '../repositories/auth_repo.dart';

@lazySingleton
class CheckIsLoggedIn extends UseCase<bool, Unit, AuthFailures> {
  CheckIsLoggedIn({
    @required this.authRepo,
  });

  final AuthRepo authRepo;

  @override
  Future<Either<AuthFailures, bool>> execute(Unit params) async {
    return authRepo.isLoggedIn();
  }

  @override
  Future<Either<AuthFailures, Unit>> validate(Unit params) async {
    return right(unit);
  }
}
