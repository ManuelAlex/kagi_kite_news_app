import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_expandable_container.dart';

void main() {
  testWidgets('ExpandableContainer expands and collapses correctly', (
    WidgetTester tester,
  ) async {
    const testKey = Key('childWidget');

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ExpandableContainer(
            isExpanded: true,
            child: Text('Expanded Content', key: testKey),
          ),
        ),
      ),
    );

    expect(find.byKey(testKey), findsOneWidget);

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ExpandableContainer(
            isExpanded: false,
            child: Text('Expanded Content', key: testKey),
          ),
        ),
      ),
    );

    await tester.pump();

    expect(find.byKey(testKey), findsOneWidget);

    await tester.pumpAndSettle();

    final sizeTransition = tester.widget<SizeTransition>(
      find.byType(SizeTransition),
    );
    // expect SizeTransition to default to 0.0
    expect(sizeTransition.sizeFactor.value, equals(0.0));
  });
}
