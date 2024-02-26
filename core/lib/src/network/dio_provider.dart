import '../../../core.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final dio = Dio();
  final apiLogInterceptor = LoggerInterceptor();

  return dio
    ..interceptors.addAll([
      apiLogInterceptor,
    ]);
}
