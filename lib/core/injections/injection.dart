import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../configs/env.dart';
import 'injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies(Env env) {
  $initGetIt(
    getIt,
    environment: env.value,
  );
}
