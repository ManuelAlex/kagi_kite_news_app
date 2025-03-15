import 'dart:math' as math;

import 'package:flutter/material.dart';

/// A widget representing a rotating expand/collapse button. The icon rotates
/// 180 degrees when pressed, then reverts the animation on a second press.
///
/// This code is based on Flutter's [ExpandIcon].
class ExpandableIcon extends StatefulWidget {
  /// Creates an [ExpandableIcon] with the given padding, and a callback that is
  /// triggered when the icon is pressed.
  const ExpandableIcon({
    super.key,
    this.isExpanded = false,
    this.size = 10,
    this.icon = Icons.keyboard_arrow_down_outlined,
    required this.onPressed,
    this.padding = const EdgeInsets.all(8.0),
    this.leftArea,
    this.rightArea,
  });

  /// Whether the icon is in an expanded state.
  ///
  /// Rebuilding the widget with a different [isExpanded] value will trigger
  /// the animation, but will not trigger the [onPressed] callback.
  final bool isExpanded;

  /// Optional areas on the left/right of the icon.
  final Widget? leftArea, rightArea;

  /// The size of the icon.
  ///
  /// This property must not be null. It defaults to 24.0.
  final double size;

  /// The displayed Icon.
  final IconData icon;

  /// The callback triggered when the icon is pressed and the state changes
  /// between expanded and collapsed. The value passed to the current state.
  ///
  /// If this is set to null, the button will be disabled.
  final ValueChanged<bool>? onPressed;

  /// The padding around the icon. The entire padded icon will react to input
  /// gestures.
  ///
  /// This property must not be null. It defaults to 8.0 padding on all sides.
  final EdgeInsetsGeometry padding;

  @override
  State<ExpandableIcon> createState() => _ExpandableIconState();
}

class _ExpandableIconState extends State<ExpandableIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _iconTurns;

  static final Animatable<double> _iconTurnTween = Tween<double>(
    begin: 0.0,
    end: 0.5,
  ).chain(CurveTween(curve: Curves.fastOutSlowIn));

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: kThemeAnimationDuration,
      vsync: this,
      debugLabel: 'ExpandableIcon',
    );
    _iconTurns = _controller.drive(_iconTurnTween);
    // If the widget is initially expanded, rotate the icon without animating it.
    if (widget.isExpanded) {
      _controller.value = math.pi;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(ExpandableIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isExpanded != oldWidget.isExpanded) {
      if (widget.isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    }
  }

  void _handlePressed() {
    widget.onPressed?.call(widget.isExpanded);
  }

  @override
  Widget build(BuildContext context) {
    final MaterialLocalizations localizations = MaterialLocalizations.of(
      context,
    );
    final String onTapHint =
        widget.isExpanded
            ? localizations.expandedIconTapHint
            : localizations.collapsedIconTapHint;

    return Semantics(
      onTapHint: widget.onPressed == null ? null : onTapHint,
      child:
          widget.leftArea == null && widget.rightArea == null
              ? IconButton(
                padding: widget.padding,
                iconSize: widget.size,
                onPressed: widget.onPressed == null ? null : _handlePressed,
                constraints: const BoxConstraints(),
                icon: RotationTransition(
                  turns: _iconTurns,
                  child: Icon(widget.icon),
                ),
              )
              : InkWell(
                onTap: widget.onPressed == null ? null : _handlePressed,

                child: Padding(
                  padding: widget.padding,
                  child: Row(
                    children: <Widget>[
                      if (widget.leftArea != null) widget.leftArea!,
                      RotationTransition(
                        turns: _iconTurns,
                        child: Icon(widget.icon, size: widget.size),
                      ),
                      if (widget.rightArea != null) widget.rightArea!,
                    ],
                  ),
                ),
              ),
    );
  }
}
