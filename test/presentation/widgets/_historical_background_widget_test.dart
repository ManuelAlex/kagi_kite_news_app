import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_historical_background_widget.dart';

void main() {
  group('HistoricalBackgroundWidget Tests', () {
    testWidgets('renders historical background correctly', (
      WidgetTester tester,
    ) async {
      const String testHistoricalBackground =
          'This is a sample historical background.';

      // Pump the widget
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: HistoricalBackgroundWidget(
              historicalBackground: testHistoricalBackground,
            ),
          ),
        ),
      );

      // Verify title is displayed
      expect(find.text('Historical Background'), findsOneWidget);

      // Verify historical background content appears
      expect(find.text(testHistoricalBackground), findsOneWidget);
    });

    testWidgets('renders empty historical background correctly', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: HistoricalBackgroundWidget(historicalBackground: ''),
          ),
        ),
      );

      // Verify title is still displayed
      expect(find.text('Historical Background'), findsOneWidget);

      // Ensure no content is displayed (empty string)
      expect(find.text(''), findsOneWidget);
    });
  });
}
