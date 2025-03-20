import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_dotted_line_widget.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_highlights_widget.dart';

void main() {
  group('Highlights Widget Tests', () {
    testWidgets('renders highlights with valid talking points', (
      WidgetTester tester,
    ) async {
      // Test data
      const List<String> testTalkingPoints = [
        'Title 1: This is the first highlight.',
        'Title 2: This is the second highlight.',
      ];

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: Highlights(talkingPoints: testTalkingPoints)),
        ),
      );

      // Check if "Highlights" is present
      expect(find.text('Highlights'), findsOneWidget);

      // Verify both highlights appear
      expect(find.text('Title 1'), findsOneWidget);
      expect(find.text('This is the first highlight.'), findsOneWidget);
      expect(find.text('Title 2'), findsOneWidget);
      expect(find.text('This is the second highlight.'), findsOneWidget);

      // Check numbered indicators (1, 2)
      expect(find.text('1'), findsOneWidget);
      expect(find.text('2'), findsOneWidget);
    });

    testWidgets('does not render when talking points are empty', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: Highlights(talkingPoints: []))),
      );

      // "Highlights" should NOT be displayed
      expect(find.text('Highlights'), findsNothing);
    });

    testWidgets('renders dotted lines correctly', (WidgetTester tester) async {
      // Sample data with one highlight
      const List<String> testTalkingPoints = ['Title 1: Highlight content.'];

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: Highlights(talkingPoints: testTalkingPoints)),
        ),
      );

      // Verify dotted lines are present
      expect(find.byType(DottedLineWidget), findsNWidgets(2));
    });

    testWidgets('renders highlights with missing content properly', (
      WidgetTester tester,
    ) async {
      const List<String> testTalkingPoints = [
        'Title only:',
        'Title with content: This is the content.',
      ];

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: Highlights(talkingPoints: testTalkingPoints)),
        ),
      );

      // Ensure titles are displayed correctly
      expect(find.text('Title only'), findsOneWidget);
      expect(find.text('Title with content'), findsOneWidget);

      // Ensure content appears correctly
      expect(find.text('This is the content.'), findsOneWidget);
    });
  });
}
