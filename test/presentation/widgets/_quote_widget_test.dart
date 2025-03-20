import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_quote_widget.dart';

void main() {
  group('QuoteWidget Tests', () {
    testWidgets('displays quote, author, and source', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: QuoteWidget(
              quote:
                  'The only limit to our realization of tomorrow is our doubts of today.',
              quoteSourceUrl: 'https://example.com',
              quoteSourceDomain: 'example.com',
              quoteAuthor: 'Franklin D. Roosevelt',
            ),
          ),
        ),
      );

      // Verify quote text is displayed
      expect(
        find.text(
          'The only limit to our realization of tomorrow is our doubts of today.',
        ),
        findsOneWidget,
      );

      // Verify author and source domain are displayed
      expect(
        find.text('Franklin D. Roosevelt (via example.com)'),
        findsOneWidget,
      );
    });
  });
}
