import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_international_reactions_widget.dart';

void main() {
  group('InternationalReactionsWidget Tests', () {
    testWidgets('displays header and valid reactions', (
      WidgetTester tester,
    ) async {
      final List<String> testReactions = [
        '🇺🇸 US: The reaction from the United States.',
        '🇬🇧 UK: The response from the United Kingdom.',
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: InternationalReactionsWidget(
              internationalReactions: testReactions,
            ),
          ),
        ),
      );

      // Verify header is shown
      expect(find.text('International Reactions'), findsOneWidget);

      // Verify country flags
      expect(find.text('🇺🇸'), findsOneWidget);
      expect(find.text('🇬🇧'), findsOneWidget);

      // Verify titles
      expect(find.text('US'), findsOneWidget);
      expect(find.text('UK'), findsOneWidget);

      // Verify contents
      expect(find.text('The reaction from the United States.'), findsOneWidget);
      expect(
        find.text('The response from the United Kingdom.'),
        findsOneWidget,
      );
    });

    testWidgets('hides header when all reactions are invalid', (
      WidgetTester tester,
    ) async {
      final List<String> invalidReactions = [
        'No flag or colon here',
        '🇨🇦 Just a flag but no colon',
        'France: Missing flag',
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: InternationalReactionsWidget(
              internationalReactions: invalidReactions,
            ),
          ),
        ),
      );

      // Verify header is not shown
      expect(find.text('International Reactions'), findsNothing);

      // Verify no reaction cards are displayed
      expect(find.byType(Card), findsNothing);
    });

    testWidgets('correctly parses reactions', (WidgetTester tester) async {
      final List<String> testReactions = [
        '🇩🇪 Germany: The German reaction.',
        '🇫🇷 France: The French response.',
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: InternationalReactionsWidget(
              internationalReactions: testReactions,
            ),
          ),
        ),
      );

      // Verify parsed titles
      expect(find.text('Germany'), findsOneWidget);
      expect(find.text('France'), findsOneWidget);

      // Verify parsed contents
      expect(find.text('The German reaction.'), findsOneWidget);
      expect(find.text('The French response.'), findsOneWidget);
    });
  });
}
