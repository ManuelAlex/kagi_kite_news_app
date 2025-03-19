import 'package:flutter/material.dart';

import 'core/app/app_initializer.dart';
import 'core/app/run_application.dart';

import 'presentation/pages/news_home_page.dart';

void main() async {
  // Initialize the application before running the widget tree,
  // ensuring dependencies like Hive are ready for synchronous use.
  final AppInitializer appInitializer = AppInitializer();
  await runApplication(appInitializer, const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
      ),
      home: const NewsHomePage(),
    );
  }
}
