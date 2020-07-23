import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../connectivity_actions/request_retrier.dart';

/// DIO interceptor to retry on connection change.
@lazySingleton
class RetryOnConnectionChangeInterceptor extends Interceptor {
  RetryOnConnectionChangeInterceptor({
    @required this.requestRetrier,
  }) : assert(
          requestRetrier != null,
        );

  final RequestRetrier requestRetrier;

  @override
  Future onError(DioError err) async {
    if (_isConnectionChangeOrNone(err) == false) {
      return err;
    }

    try {
      return requestRetrier.scheduleRequestRetry(err.request);
    } on Exception catch (e) {
      return e;
    }
  }

  bool _isConnectionChangeOrNone(DioError err) {
    return err.type == DioErrorType.DEFAULT &&
        err.error != null &&
        err.error is SocketException;
  }
}
