import 'package:dio/dio.dart';

enum ApiStatus {
  // The request was successful.
  ok(200),
  // No internet connection.
  connectionTimeout(-1),
  // Connection timeout.
  sendTimeout(-2),
  // Receive timeout.
  receiveTimeout(-3),
  // Bad certificate.
  badCertificate(-4),
  // Should never occur.
  badResponse(-5),
  // Canceled request.
  canceled(-6),
  // Caused by socket error.
  connectionError(-7),
  // Another exception.
  unknownError(-8),
  // Malformed request.
  badRequest(400),
  // Unauthorized request.
  unauthorized(401),

  notFound(404),

  /// Conflict.
  ///
  /// A request conflict with the current state of the target resource.
  conflict(409),

  // Internal server error.
  internalServerError(500);

  const ApiStatus(this.httpCode);

  factory ApiStatus.fromDioExceptionType(DioExceptionType type) {
    return switch (type) {
      DioExceptionType.connectionTimeout => connectionTimeout,
      DioExceptionType.receiveTimeout => receiveTimeout,
      DioExceptionType.sendTimeout => sendTimeout,
      DioExceptionType.badCertificate => badCertificate,
      DioExceptionType.badResponse => badResponse,
      DioExceptionType.cancel => canceled,
      DioExceptionType.connectionError => connectionError,
      DioExceptionType.unknown => unknownError,
    };
  }

  factory ApiStatus.fromResponseCode(int code) {
    return switch (code) {
      200 => ok,
      400 => badRequest,
      401 => unauthorized,
      409 => conflict,
      500 => internalServerError,
      _ => unknownError,
    };
  }

  /// The HTTP status code.
  final int httpCode;

  bool get isOk => this == ok;
}
