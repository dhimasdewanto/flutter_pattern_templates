import 'package:dio/dio.dart';

import '../injections/injection.dart';
import 'interceptors/retry_on_connection_change_interceptor.dart';

/// Add some attribute to DIO (interceptor, etc).
/// 
/// Add this after initialize dependency injection.
abstract class DioSetter {
  static void setInterceptor() {
    final dio = getIt<Dio>();
    final retryInterceptor = getIt<RetryOnConnectionChangeInterceptor>();
    dio.interceptors.add(retryInterceptor);
  }
}
