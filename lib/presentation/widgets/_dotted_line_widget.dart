import 'package:flutter/material.dart';

class DottedLinePainter extends CustomPainter {
  DottedLinePainter({required this.dashSpace, required this.dashWidth});
  final double dashWidth, dashSpace;
  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.grey
          ..strokeWidth = 2
          ..style = PaintingStyle.stroke;

    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class DottedLineWidget extends StatelessWidget {
  const DottedLineWidget({
    super.key,
    this.lineHeight = 2,
    required this.lineWidth,
    this.dashSpace = 3,
    this.dashWidth = 5,
  });
  final double lineWidth;
  final double lineHeight;
  final double dashWidth, dashSpace;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(lineWidth, lineHeight),
      painter: DottedLinePainter(dashSpace: dashSpace, dashWidth: dashWidth),
    );
  }
}
