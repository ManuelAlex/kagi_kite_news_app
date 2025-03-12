import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_response.dart';
import 'api_status.dart';

class ApiClient {
  ApiClient();

  final Dio _dio = Dio(
    BaseOptions(
      responseType: ResponseType.bytes,
      // connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      validateStatus: (int? status) => status != null && status < 600,
    ),
  );

  /// Sends a request to the API.
  ///
  /// [method] is the HTTP method (e.g., 'GET', 'POST').
  /// [uri] is the target endpoint.
  /// [data] is optional body content.
  /// [headers] allows setting custom request headers.
  ///
  /// Always returns an [ApiResponse] (never throws exceptions).
  Future<ApiResponse> request(
    String method,
    Uri uri, {
    Object? data,
    Map<String, dynamic>? headers,
  }) async {
    final Map<String, dynamic> resolvedHeaders = {
      'Accept': 'application/json',
      if (data != null) 'Content-Type': 'application/json',
      ...?headers,
    };

    final Options options = Options(method: method, headers: resolvedHeaders);

    try {
      final Response<List<int>> response = await _dio.request(
        uri.toString(),
        data: data,
        options: options,
      );

      return ApiResponse(
        status:
            response.statusCode != null
                ? ApiStatus.fromResponseCode(response.statusCode!)
                : ApiStatus.unknownError,
        data: Uint8List.fromList(response.data ?? <int>[]),
      );
    } on DioException catch (exception) {
      return ApiResponse(
        status: ApiStatus.fromDioExceptionType(exception.type),
        data: Uint8List(0),
      );
    }
  }

  Future<ApiResponse> get(Uri uri) => request('GET', uri);

  Future<ApiResponse> post(Uri uri, Map<String, dynamic> document) {
    return request('POST', uri, data: jsonEncode(document));
  }
}
