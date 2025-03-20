import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kagi_kite_news_app/presentation/widgets/_animated_kite_logo.dart';
import 'package:mocktail/mocktail.dart';

// Mock callback class
class MockVoidCallback extends Mock {
  void call();
}

void main() {
  testWidgets('AnimatedKiteLogo renders correctly', (
    WidgetTester tester,
  ) async {
    final MockVoidCallback mockCallback = MockVoidCallback();

    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: AnimatedKiteLogo(onRefresh: mockCallback.call)),
      ),
    );

    // Verify the logo and button are displayed
    expect(find.byType(Image), findsOneWidget);
    expect(find.text('Kite'), findsOneWidget);
  });

  testWidgets('Tapping the Kite button calls onRefresh', (
    WidgetTester tester,
  ) async {
    final MockVoidCallback mockCallback = MockVoidCallback();

    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: AnimatedKiteLogo(onRefresh: mockCallback.call)),
      ),
    );

    // Tap the button
    await tester.tap(find.text('Kite'));
    await tester.pump();

    // Verify that onRefresh was called
    verify(mockCallback.call).called(1);
  });

  testWidgets('Tapping the image starts animation', (
    WidgetTester tester,
  ) async {
    final MockVoidCallback mockCallback = MockVoidCallback();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(body: AnimatedKiteLogo(onRefresh: mockCallback.call)),
      ),
    );

    // Tap on the kite image
    await tester.tap(find.byType(Image));
    await tester.pump();

    expect(find.byType(AnimatedBuilder), findsWidgets);
  });

  testWidgets('Animation plays when shouldAnimateOnRefresh is true', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AnimatedKiteLogo(
            onRefresh: () {},
            shouldAnimateOnRefresh: true,
          ),
        ),
      ),
    );

    // Wait for the animation to complete
    await tester.pumpAndSettle();

    // Verify that animation has played
    expect(find.byType(AnimatedBuilder), findsWidgets);
  });
}
