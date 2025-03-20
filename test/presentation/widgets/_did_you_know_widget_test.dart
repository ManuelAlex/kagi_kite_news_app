import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_did_you_know_widget.dart';

void main() {
  testWidgets('DidYouKnowWidget displays title and content correctly', (
    WidgetTester tester,
  ) async {
    const String testContent = 'Flutter is awesome!';

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: DidYouKnowWidget(content: testContent)),
      ),
    );

    // Verify the title is displayed
    expect(find.text('Did you know?'), findsOneWidget);

    // Verify the content is displayed
    expect(find.text(testContent), findsOneWidget);

    // Verify that the Card widget exists
    expect(find.byType(Card), findsOneWidget);

    // Verify the background color of the Card
    final Card card = tester.widget(find.byType(Card));
    expect(card.color, const Color(0xFFCCCCFF));
  });
}
