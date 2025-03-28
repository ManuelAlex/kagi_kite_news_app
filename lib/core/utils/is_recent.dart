extension IsRecent on DateTime {
  bool get isRecent {
    final DateTime dateUtc = isUtc ? this : toUtc();
    final DateTime nowUtc = DateTime.now().toUtc();

    // Check if the timestamp is within the last 8 hours
    // Updated only three times per day
    // as from the kagi kite News Api Github  read me

    return nowUtc.difference(dateUtc).inHours <= 8;
  }
}
