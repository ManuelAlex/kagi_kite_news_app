import 'package:dart_mappable/dart_mappable.dart';
part 'api_error.mapper.dart';

@MappableClass()
class ApiError with ApiErrorMappable {
  /// Creates a new [ApiError] with the given [code] and [message].
  const ApiError({required this.code, this.message});

  /// Short code-name to accommodate the message.
  ///
  /// Allows users to identify the exception from a short code-name, for example
  /// "no-app" is used when a user attempts to read a [] which does
  /// not exist.
  final String code;

  /// The long form message of the error.
  final String? message;
}
