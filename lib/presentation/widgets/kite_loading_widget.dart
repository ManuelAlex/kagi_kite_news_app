import 'dart:math';

import 'package:flutter/material.dart';

class KiteLoadingWidget extends StatefulWidget {
  const KiteLoadingWidget({super.key, required this.progressValue});
  final double progressValue;

  @override
  State<KiteLoadingWidget> createState() => _KiteLoadingWidgetState();
}

class _KiteLoadingWidgetState extends State<KiteLoadingWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  static const double movementRange = 20.0;
  static const double angle = -pi / 2; //90 degrees

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double progress = _animationController.value;

    const double dx = 0;
    final double dy = movementRange * progress * angle;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Transform.translate(
          offset: Offset(dx, dy),
          child: Image.asset(
            'assets/kite_bg.png',
            fit: BoxFit.contain,
            height: 100,
            width: 100,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kite',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 4),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'BETA',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text('News. ELevated.', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        Text(
          '${(widget.progressValue * 100).ceil()}%',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
