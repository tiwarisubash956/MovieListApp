// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    
      print("Request [${options.method}] => URL: ${options.uri}");
    
      print("Headers: ${options.headers}");
    

    if (options.data != null) {
      if (kDebugMode) {
        print("Request Data: ${options.data}");
      }
    }
    super.onRequest(options, handler); // Continue the request
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
      print(
        "Response [${response.statusCode}] => URL: ${response.requestOptions.uri}");
    
    
      print("Response Data: ${response.data}");
    
    super.onResponse(response, handler);
   
      print("Redirect Location: ${response.headers['location']}");
    
// Continue the response
  }

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) {
    
      print(
        "Error [${error.response?.statusCode}] => URL: ${error.requestOptions.uri}");
    
   
      print("Error Message: ${error.message}");
    
    if (error.response != null) {
        print("Error Data: ${error.response?.data}");
      
    }
    super.onError(error, handler); // Continue the error
  }
}
