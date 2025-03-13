import 'package:dart_mappable/dart_mappable.dart';

class DatetimeJsonMapper extends SimpleMapper<DateTime> {
  const DatetimeJsonMapper();

  @override
  DateTime decode(Object value) {
    if (value is int) {
      // Convert from Unix timestamp (seconds) to DateTime
      return DateTime.fromMillisecondsSinceEpoch(value * 1000);
    } else if (value is String) {
      // Parse ISO 8601 date string
      return DateTime.parse(value);
    }
    throw MapperException.unexpectedType(value.runtimeType, 'int or String');
  }

  @override
  Object encode(DateTime self) => self.toIso8601String();
}
