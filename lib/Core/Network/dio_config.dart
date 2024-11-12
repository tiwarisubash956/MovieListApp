import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart'; // Ensure correct import based on your Dio version
import 'logging_interceptor.dart'; // Import your logging interceptor

Dio createDio() {
  final dio = Dio(
    BaseOptions(
      queryParameters: {
        'client_id': '1o1wRXEYpfix7hujcZ6Al5e2TJiBByhNyFchhhagyUM',
      },
      
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
      followRedirects: true, // Enable following redirects
      validateStatus: (status) {
        return status != null && status < 500; // Acceptable range
      },
    ),
  );

  dio.httpClientAdapter = IOHttpClientAdapter()
    ..onHttpClientCreate = (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) =>
              true; // Disable SSL validation for dev
      return client;
    };

  // Add logging interceptor
  dio.interceptors.add(LoggingInterceptor());

  return dio;
}
