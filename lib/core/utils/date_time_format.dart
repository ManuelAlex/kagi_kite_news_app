import 'package:intl/intl.dart';

extension DateTimeFormat on DateTime {
  /// Formats Datetime as eg Saturday, March 15
  String formatAsWeekdayMonthDay([String? locale]) =>
      DateFormat('EEEE, MMMM d', locale).format(this);
}
