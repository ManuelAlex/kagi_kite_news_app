import 'dart:io';

import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../hive_registrar.g.dart';

part 'hive_provider.g.dart';

@riverpod
Future<HiveInterface> hiveInterface(Ref ref) async {
  final Directory directory = await getApplicationDocumentsDirectory();

  Hive
    ..init(directory.path)
    ..registerAdapters();

  return Hive;
}
