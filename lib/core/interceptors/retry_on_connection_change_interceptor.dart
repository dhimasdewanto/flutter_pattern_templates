import 'dart:io';

import 'package:dio/dio.dart';

import '../connectivity_actions/request_retrier.dart';

/// DIO interceptor to retry on connection change.
class RetryOnConnectionChangeInterceptor extends Interceptor {
  RetryOnConnectionChangeInterceptor({
    required this.requestRetrier,
  });

  final RequestRetrier requestRetrier;

  @override
  Future onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    if (_isConnectionChangeOrNone(err) == false) {
      return err;
    }

    try {
      return requestRetrier.scheduleRequestRetry(
        requestOptions: err.requestOptions,
      );
    } on Exception catch (e) {
      return e;
    }
  }

  bool _isConnectionChangeOrNone(DioError err) {
    return err.error != null && err.error is SocketException;

    // TODO(dev): Missing DioErrorType.DEFAULT. Replacement?
    // return err.type == DioErrorType.DEFAULT &&
    //     err.error != null &&
    //     err.error is SocketException;
  }
}
