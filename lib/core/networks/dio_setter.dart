import 'package:dio/dio.dart';

import '../configs/app_settings.dart';
import '../configs/secret_reader.dart';
import '../injections/injection.dart';
import 'interceptors/retry_on_connection_change_interceptor.dart';


/// Initialize Dio with some options.
Dio get initDio {
  final dio = Dio();
  dio.options.baseUrl = AppSettings.newsApiUrl;
  dio.options.headers = {
    "X-Api-Key": SecretReader.newsApiKey,
  };
  return dio;
}

/// Add some attribute to DIO (interceptor, etc).
///
/// Add this after initialize dependency injection.
void setInterceptor() {
  final dio = getIt<Dio>();
  final retryInterceptor = getIt<RetryOnConnectionChangeInterceptor>();
  dio.interceptors.add(retryInterceptor);
}
