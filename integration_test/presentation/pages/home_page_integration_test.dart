import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:kagi_kite_news_app/main.dart';

import '../../core/utils/integration_tester.dart';
import '../../core/utils/load_application.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Kite home page integration test', (WidgetTester tester) async {
    final IntegrationTester t = IntegrationTester(tester);
    await pumpApp(tester, const MyApp());

    await tester.pumpAndSettle();
    await refreshKiteButton(t);
    await tapOnTabButtons(t);
    await markThirdItemAsRead(tester, t);
    // Mark first category cluster as read
    await tapFirstClusterView(t, tester);
  });
}

Future<void> tapFirstClusterView(
  IntegrationTester t,
  WidgetTester tester,
) async {
  // Find the THird cluster list item

  // Find the first cluster list item
  final Finder clusterList = find.byKey(const Key('clusterListView'));
  final Finder firstCluster =
      find
          .descendant(of: clusterList, matching: find.byKey(const ValueKey(3)))
          .first;

  // Find the isReadContainer
  await t.tap(finder: firstCluster);
}

Future<void> markThirdItemAsRead(
  WidgetTester tester,
  IntegrationTester t,
) async {
  // Find the first cluster list item
  final Finder clusterList = find.byKey(const Key('clusterListView'));
  final Finder thirdCluster =
      find
          .descendant(of: clusterList, matching: find.byKey(const ValueKey(3)))
          .first;

  // Find the isReadContainer
  final Finder isReadContainer = find.descendant(
    of: thirdCluster,
    matching: find.byKey(const Key('isReadContainer')),
  );

  // Function to get the color from a container
  Color? getContainerColor(Finder containerFinder) {
    final Container containerWidget =
        tester.widget(containerFinder) as Container;
    final BoxDecoration? decoration =
        containerWidget.decoration as BoxDecoration?;
    return decoration?.color;
  }

  // Get initial color
  final Color? initialColor = getContainerColor(isReadContainer);

  // Find the 'isRead' button within the first cluster
  final Finder isReadButton = find.descendant(
    of: thirdCluster,
    matching: find.byKey(const Key('isReadButton')),
  );

  // Tap the 'isRead' button
  await t.tap(finder: isReadButton);
  await tester.pumpAndSettle();

  // Get the updated color
  final Color? updatedColor = getContainerColor(isReadContainer);

  // Ensure the color has changed after tapping
  expect(updatedColor, isNot(equals(initialColor)));
}

Future<void> tapOnTabButtons(IntegrationTester t) async {
  final Finder tabButtons = find.byKey(const Key('tabButton'));

  if (t.tester.widgetList(tabButtons).length < 2) {
    throw Exception('Not enough tab buttons found.');
  }

  // Get positions of the first two tabs
  final Offset firstTabPos = t.tester.getCenter(tabButtons.at(0));
  final Offset secondTabPos = t.tester.getCenter(tabButtons.at(1));

  // Calculate dx (horizontal distance between tabs)
  final double dx = secondTabPos.dx - firstTabPos.dx; // This should be positive

  for (int i = 0; i < t.tester.widgetList(tabButtons).length; i++) {
    final Finder tab = tabButtons.at(i);

    try {
      // Ensure the tab is visible before tapping
      await t.tester.ensureVisible(tab);
      await t.tester.pumpAndSettle();
    } catch (e) {
      // If tab is not visible, scroll RIGHT by the calculated dx
      await t.tester.drag(
        tabButtons.first,
        Offset(dx + (dx / 2), firstTabPos.dy - kToolbarHeight),
      ); // Move right
    }

    // Tap the tab button
    await t.tap(finder: tab);
  }

  // After tapping all tabs, scroll back to the first tab (LEFT)
  await t.tester.drag(
    tabButtons.first,
    Offset(
      -dx * (t.tester.widgetList(tabButtons).length - 1),
      firstTabPos.dy - kToolbarHeight,
    ),
  );

  // Ensure the first tab is selected
  await t.tap(finder: tabButtons.first);
}

Future<void> refreshKiteButton(IntegrationTester t) async {
  // Find the kite image before tapping
  final Finder kiteImageFinder = find.byKey(const Key('kiteLogo'));

  // Tap the kite button to trigger reload
  await t.tap(stringKey: 'kiteButton');

  await t.pumpUntilNotFound(stringKey: 'KiteLoadingWidget');

  expect(kiteImageFinder, findsOneWidget);
}
