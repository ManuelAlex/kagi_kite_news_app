import 'package:hive_ce_flutter/hive_flutter.dart';

/// This ensures Hive is initialized once and stored in `appHive`,
/// allowing synchronous access throughout the app without using `Future` everywhere.
late HiveInterface appHive;
