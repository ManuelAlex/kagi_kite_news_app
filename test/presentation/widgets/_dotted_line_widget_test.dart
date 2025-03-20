import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_kite_news_app/presentation/widgets/_dotted_line_widget.dart';

void main() {
  testWidgets('DottedLineWidget renders correctly', (
    WidgetTester tester,
  ) async {
    const double testLineWidth = 100;
    const double testLineHeight = 4;
    const double testDashWidth = 8;
    const double testDashSpace = 5;

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: DottedLineWidget(
            lineWidth: testLineWidth,
            lineHeight: testLineHeight,
            dashWidth: testDashWidth,
            dashSpace: testDashSpace,
          ),
        ),
      ),
    );

    // Find all CustomPaint widgets as flutter uses it own CustomPaint
    final Iterable<CustomPaint> customPaints = tester.widgetList<CustomPaint>(
      find.byType(CustomPaint),
    );

    // Identify the correct CustomPaint that uses DottedLinePainter
    final CustomPaint customPaint = customPaints.firstWhere(
      (CustomPaint paint) => paint.painter is DottedLinePainter,
    );

    // Verify that the correct CustomPaint was found
    expect(customPaint, isNotNull);
    expect(customPaint.painter, isA<DottedLinePainter>());

    // Verify the painter properties
    final DottedLinePainter painter = customPaint.painter! as DottedLinePainter;
    expect(painter.dashWidth, testDashWidth);
    expect(painter.dashSpace, testDashSpace);
  });
}
