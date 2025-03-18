import 'package:intl/intl.dart';

extension DateTimeFormat on DateTime {
  /// Formats DateTime as e.g., "Saturday, March 15"
  String formatAsWeekdayMonthDay([String? locale]) =>
      DateFormat('EEEE, MMMM d', locale).format(this);

  /// Formats DateTime as e.g., "Week 11, Day 77"
  String formatAsWeekAndDay() {
    final int weekOfYear = ((difference(DateTime(year)).inDays) ~/ 7) + 1;
    final int dayOfYear = int.parse(DateFormat('D').format(this));

    return 'Week $weekOfYear, Day $dayOfYear';
  }

  /// Returns a human-readable "Last updated" format based on time difference
  String notificationTime() {
    final Duration difference = DateTime.now().difference(this);

    if (difference.inSeconds < 60) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} min ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hr ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      return formatAsWeekAndDay();
    }
  }
}
