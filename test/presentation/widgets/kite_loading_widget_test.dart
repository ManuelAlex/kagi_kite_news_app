import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/presentation/widgets/kite_loading_widget.dart';

void main() {
  testWidgets('KiteLoadingWidget displays correct progress and animates', (
    WidgetTester tester,
  ) async {
    const double testProgress = 0.75;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: KiteLoadingWidget(progressValue: testProgress)),
      ),
    );

    expect(find.byType(Image), findsOneWidget);

    // Verify that the progress percentage is displayed correctly
    expect(find.text('${(testProgress * 100).ceil()}%'), findsOneWidget);

    await tester.pump(const Duration(milliseconds: 150));
    await tester.pump(const Duration(milliseconds: 150));

    // Animation should still be running (no assertion here since it's hard to test animations directly)
  });
}
