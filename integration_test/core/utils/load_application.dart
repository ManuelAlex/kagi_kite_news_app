// Load app widget.
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/core/app/app_initializer.dart';

Future<void> pumpApp(WidgetTester tester, Widget widget) async {
  await tester.binding.setSurfaceSize(const Size(375, 812));
  final AppInitializer appInitializer = AppInitializer(); // iPhone 11 size
  await tester.runAsync(() async {
    await appInitializer.initialize();
  });

  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: appInitializer.providerContainer,
      child: widget,
    ),
  );
  await tester.pumpAndSettle();
}
