import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/core/data/remote/endpoint.dart';
import '/core/data/remote/network_service_interceptor.dart';

final networkServiceProvider = Provider<Dio>((ref) {
  final options = BaseOptions(
    baseUrl: baseURL,
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    sendTimeout: const Duration(seconds: 60),
  );

  final dio = Dio(options);
  final networkServiceInterceptor = ref.watch(
    networkServiceInterceptorProvider(dio),
  );

  dio.interceptors.addAll([
    HttpFormatter(
      loggingFilter: (request, response, error) {
        // We don't want to print the request/response when 201 is returned
        if (response?.statusCode == 201) {
          return false;
        }
        // print(response?.statusCode);
        // Otherwise, the logs should print
        return true;
      },
    ),
    networkServiceInterceptor,
  ]);

  return dio;
});
