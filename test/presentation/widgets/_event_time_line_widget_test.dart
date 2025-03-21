import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_event_time_line_widget.dart';

void main() {
  group('EventTimeLineWidget Tests', () {
    testWidgets('renders timeline with valid events', (
      WidgetTester tester,
    ) async {
      const List<String> testTimeLines = [
        'Event 1:: This is the first event.',
        'Event 2:: This is the second event.',
      ];

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: EventTimeLineWidget(timeLines: testTimeLines)),
        ),
      );

      // Check if "Timeline of events" is present
      expect(find.text('Timeline of events'), findsOneWidget);

      // Verify both events appear
      expect(find.text('Event 1'), findsOneWidget);
      expect(find.text('This is the first event.'), findsOneWidget);
      expect(find.text('Event 2'), findsOneWidget);
      expect(find.text('This is the second event.'), findsOneWidget);

      // Check if the circular index indicators exist
      expect(find.text('1'), findsOneWidget);
      expect(find.text('2'), findsOneWidget);
    });

    testWidgets('does not render when timeline is empty', (
      WidgetTester tester,
    ) async {
      // Pump with an empty timeline
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: EventTimeLineWidget(timeLines: [])),
        ),
      );

      // Ensure "Timeline of events" is NOT found
      expect(find.text('Timeline of events'), findsNothing);
    });

    testWidgets('does not render when timeline has invalid entries', (
      WidgetTester tester,
    ) async {
      // Invalid timeline data (missing "::")
      const List<String> invalidTimeLines = [
        'Invalid event format',
        'Another invalid format',
      ];

      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: EventTimeLineWidget(timeLines: invalidTimeLines),
          ),
        ),
      );

      // "Timeline of events" should NOT appear
      expect(find.text('Timeline of events'), findsNothing);
    });
  });
}
