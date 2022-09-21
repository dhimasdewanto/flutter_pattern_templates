import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

/// Retry request if user change internet source or connected to internet.
class RequestRetrier {
  RequestRetrier({
    required this.connectivity,
    required this.dio,
  });

  final Connectivity connectivity;
  final Dio dio;

  Future<Response> scheduleRequestRetry({
    required RequestOptions requestOptions,
    Options? options,
  }) async {
    StreamSubscription<ConnectivityResult>? streamSubscription;
    final responseCompleter = Completer<Response>();

    streamSubscription = connectivity.onConnectivityChanged.listen(
      (connectivityResult) {
        if (connectivityResult != ConnectivityResult.none) {
          streamSubscription?.cancel();
          responseCompleter.complete(
            dio.request(
              requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
              options: options ??
                  Options(
                    method: requestOptions.method,
                    sendTimeout: requestOptions.sendTimeout,
                    receiveTimeout: requestOptions.receiveTimeout,
                    extra: requestOptions.extra,
                    headers: requestOptions.headers,
                    responseType: requestOptions.responseType,
                    contentType: requestOptions.contentType,
                    validateStatus: requestOptions.validateStatus,
                    receiveDataWhenStatusError:
                        requestOptions.receiveDataWhenStatusError,
                    followRedirects: requestOptions.followRedirects,
                    maxRedirects: requestOptions.maxRedirects,
                    requestEncoder: requestOptions.requestEncoder,
                    responseDecoder: requestOptions.responseDecoder,
                    listFormat: requestOptions.listFormat,
                  ),
            ),
          );
        }
      },
    );

    return responseCompleter.future;
  }
}
