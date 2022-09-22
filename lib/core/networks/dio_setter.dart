import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import '../configs/app_configs.dart';
import '../configs/secret_reader.dart';
import 'connectivity_actions/request_retrier.dart';
import 'interceptors/retry_on_connection_change_interceptor.dart';

/// Initialize Dio with some options.
Dio get initDio {
  final dio = Dio();
  dio.options.baseUrl = AppConfigs.newsApiUrl;
  dio.options.headers = {
    "X-Api-Key": SecretReader.newsApiKey,
  };
  dio.interceptors.add(
    getRetryOnConnectionInterceptor(dio),
  );
  return dio;
}

Interceptor getRetryOnConnectionInterceptor(Dio dio) {
  return RetryOnConnectionChangeInterceptor(
    requestRetrier: RequestRetrier(
      connectivity: Connectivity(),
      dio: dio,
    ),
  );
}