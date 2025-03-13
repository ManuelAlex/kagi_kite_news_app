// A base exception class that all exceptions should extend.
import 'package:flutter/foundation.dart';

///
/// This class is used to provide a consistent way to handle exceptions
/// throughout the application. It provides a [code] and [message] to
/// help identify the exception and provide a detailed message.
@immutable
class BaseException implements Exception {
  const BaseException({required this.code, this.message});

  /// Short code-name to accommodate the message.
  ///
  /// Allows users to identify the exception from a short code-name, for example
  /// "no-app" is used when a user attempts to read a [] which does
  /// not exist.
  final String code;

  /// The long form message of the exception.
  final String? message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is BaseException &&
            runtimeType == other.runtimeType &&
            code == other.code &&
            message == other.message;
  }

  @override
  int get hashCode => Object.hash(code, message);

  @override
  String toString() => '[$code] $message';
}
