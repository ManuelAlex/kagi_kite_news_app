import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_status.dart';

@immutable
class ApiResponse {
  const ApiResponse({required this.status, required this.data});

  final ApiStatus status;
  final Uint8List data;

  /// Decodes the response as a UTF-8 string.
  String get asDataString => utf8.decode(data);

  /// Parses JSON and returns a Map.
  Map<String, dynamic> get asJson =>
      jsonDecode(asDataString) as Map<String, dynamic>;

  @override
  String toString() {
    return '[${status.httpCode}] ${status.name}';
  }
}
