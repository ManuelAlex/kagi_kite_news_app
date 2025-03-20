import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:kagi_kite_news_app/main.dart';

import '../../core/utils/integration_tester.dart';
import '../../core/utils/load_application.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized(); // NEW line we added

  testWidgets('tap on the kite button and verify reload and loading widget', (
    tester,
  ) async {
    final IntegrationTester t = IntegrationTester(tester);
    await pumpApp(tester, const MyApp());
    await tester.pumpAndSettle();

    // Find the kite image before tapping
    final Finder kiteImageFinder = find.byKey(const Key('kiteLogo'));

    // Tap the kite button to trigger reload
    await t.tap(stringKey: 'kiteButton');

    await t.pumpUntilNotFound(stringKey: 'KiteLoadingWidget');

    expect(kiteImageFinder, findsOneWidget);
  });
}
