import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../networks/dio_setter.dart';

@module
abstract class RegisterModules {
  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  Dio get dio => initDio;
}
