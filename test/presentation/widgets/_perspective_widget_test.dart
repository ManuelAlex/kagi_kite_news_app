import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/domain/entities/value_objects/value_objects.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_perspective_widget.dart';

void main() {
  group('PerspectiveWidget Tests', () {
    testWidgets('displays header and perspectives', (
      WidgetTester tester,
    ) async {
      final List<Perspective> testPerspectives = [
        const Perspective(
          text: 'Economic: The economic outlook is improving.',
          sources: [Source(name: 'BBC', url: 'https://bbc.com')],
        ),
        const Perspective(
          text: 'Political: The political climate remains uncertain.',
          sources: [Source(name: 'CNN', url: 'https://cnn.com')],
        ),
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PerspectiveWidget(perspectives: testPerspectives),
          ),
        ),
      );

      // Verify header is shown
      expect(find.text('Perspective'), findsOneWidget);

      // Verify titles
      expect(find.text('Economic'), findsOneWidget);
      expect(find.text('Political'), findsOneWidget);

      // Verify content
      expect(find.text('The economic outlook is improving.'), findsOneWidget);
      expect(
        find.text('The political climate remains uncertain.'),
        findsOneWidget,
      );

      // Verify source names
      expect(find.text('BBC'), findsOneWidget);
      expect(find.text('CNN'), findsOneWidget);
    });

    testWidgets('hides header when perspectives list is empty', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: PerspectiveWidget(perspectives: [])),
        ),
      );

      // Verify header is not shown
      expect(find.text('Perspective'), findsNothing);

      // Verify no perspective cards are displayed
      expect(find.byType(Card), findsNothing);
    });

    testWidgets('handles missing source name and URL', (
      WidgetTester tester,
    ) async {
      final List<Perspective> testPerspectives = [
        const Perspective(
          text: 'Scientific: New research findings released.',
          sources: [],
        ),
      ];

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PerspectiveWidget(perspectives: testPerspectives),
          ),
        ),
      );

      // Verify title and content
      expect(find.text('Scientific'), findsOneWidget);
      expect(find.text('New research findings released.'), findsOneWidget);

      // Verify default source name
      expect(find.text('Unknown Source'), findsOneWidget);
    });
  });
}
