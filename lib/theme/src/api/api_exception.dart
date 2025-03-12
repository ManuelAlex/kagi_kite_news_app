import 'dart:convert';

import 'api_error.dart';
import 'api_response.dart';
import 'api_status.dart';
import 'base_exception.dart';

class ApiException extends BaseException {
  const ApiException({
    required super.code,
    super.message,
    this.status,
    this.serverError,
  });

  factory ApiException.fromApiResponse(ApiResponse response) {
    // Try decoding the response body into a JSON map
    final Map<String, dynamic>? jsonData = _tryDecodeJson(
      response.asDataString,
    );
    return ApiException(
      code: 'request-failed',
      message: 'Unexpected response: ${response.asDataString}',
      status: response.status,
      serverError:
          jsonData != null
              ? ApiError(
                code: response.status.httpCode.toString(),
                message: jsonData['error'] ?? jsonData['message'],
              )
              : null,
    );
  }

  final ApiStatus? status;
  final ApiError? serverError;
}

/// Helper method to safely decode JSON
Map<String, dynamic>? _tryDecodeJson(String source) {
  try {
    return jsonDecode(source) as Map<String, dynamic>;
  } catch (_) {
    return null; // Return null if it's not valid JSON
  }
}
