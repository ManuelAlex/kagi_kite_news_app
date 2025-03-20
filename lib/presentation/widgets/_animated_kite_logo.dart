import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedKiteLogo extends StatefulWidget {
  const AnimatedKiteLogo({
    super.key,
    required this.onRefresh,
    this.shouldAnimateOnRefresh = false,
  });

  final VoidCallback onRefresh;
  final bool shouldAnimateOnRefresh;

  @override
  State<AnimatedKiteLogo> createState() => _AnimatedKiteLogoState();
}

class _AnimatedKiteLogoState extends State<AnimatedKiteLogo>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  static const double movementRange = 20.0;
  static const double angle1 = -pi / 6; // -30 degrees (up-right)
  static const double angle2 = -pi / 3; // -60 degrees (steeper up)

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    if (widget.shouldAnimateOnRefresh) {
      _playFullCycle();
    }
  }

  @override
  void didUpdateWidget(covariant AnimatedKiteLogo oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.shouldAnimateOnRefresh && !oldWidget.shouldAnimateOnRefresh) {
      _playFullCycle();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _playFullCycle() async {
    await _animationController.forward();
    await _animationController.reverse();
  }

  void _onTap() {
    if (!_animationController.isAnimating) {
      _playFullCycle();
      //widget.onRefresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (BuildContext context, Widget? child) {
          final double progress = _animationController.value;
          final double angle = angle1 + (angle2 - angle1) * progress;
          final double dx = movementRange * progress * cos(angle);
          final double dy = movementRange * progress * sin(angle);

          return Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Transform.translate(
                offset: Offset(dx, dy),
                child: Image.asset(
                  key: const Key('kiteLogo'),
                  'assets/kite_bg.png',
                  fit: BoxFit.contain,
                  height: 40,
                  width: 40,
                ),
              ),

              TextButton(
                key: const Key('kiteButton'),
                onPressed: widget.onRefresh,
                child: Text(
                  'Kite',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
