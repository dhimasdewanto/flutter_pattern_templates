import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../configs/app_settings.dart';
import '../configs/secret_reader.dart';

@module
abstract class RegisterModules {
  @lazySingleton
  Dio get dio => _initDio;

  Dio get _initDio {
    final dio = Dio();
    dio.options.baseUrl = AppSettings.newsApiUrl;
    dio.options.headers = {
      "X-Api-Key": SecretReader.newsApiKey,
    };
    return dio;
  }
}
