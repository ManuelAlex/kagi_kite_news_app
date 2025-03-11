import 'package:dart_mappable/dart_mappable.dart';

class DatetimeJsonMapper extends SimpleMapper<DateTime> {
  const DatetimeJsonMapper();

  @override
  DateTime decode(Object value) {
    if (value is! int) {
      throw MapperException.unexpectedType(value.runtimeType, 'int');
    }
    return DateTime.fromMillisecondsSinceEpoch(value * 1000);
  }

  @override
  Object encode(DateTime self) => self.millisecondsSinceEpoch ~/ 1000;
}
