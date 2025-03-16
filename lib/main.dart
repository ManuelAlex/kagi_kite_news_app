import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'hive_registrar.g.dart';
import 'presentation/pages/new_home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Directory directory = await getApplicationDocumentsDirectory();
  Hive
    ..init(directory.path)
    ..registerAdapters();
  await Hive.deleteBoxFromDisk('newsCategoryDetailsBox');

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: const NewHomePage(),
    );
  }
}
