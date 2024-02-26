import '../../core.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.request(
      method: options.method,
      uri: options.uri,
      // ignore: invalid_use_of_internal_member
      stack: options.sourceStackTrace,
      parameters: {...options.queryParameters}..addAll(options.headers),
      data: options.data,
    );

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.response(
      status: response.statusCode!,
      method: response.requestOptions.method,
      url: response.requestOptions.uri,
      data: response.data,
    );
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.response(
      status: err.response?.statusCode ?? 0,
      method: err.requestOptions.method,
      url: err.requestOptions.uri,
      data: err.response?.data,
    );
    super.onError(err, handler);
  }
}
