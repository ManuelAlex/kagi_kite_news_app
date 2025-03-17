import 'package:flutter/material.dart';

class ExpandableContainer extends StatefulWidget {
  const ExpandableContainer({
    super.key,
    required this.isExpanded,
    required this.child,
  });

  final bool isExpanded;
  final Widget child;

  @override
  State<ExpandableContainer> createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _expandController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
    debugLabel: 'ExpandableContainer',
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _expandController,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    super.initState();
    _checkExpand();
  }

  void _checkExpand() {
    if (widget.isExpanded) {
      _expandController.forward();
    } else {
      _expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandableContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    _checkExpand();
  }

  @override
  void dispose() {
    _expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1.0,
      sizeFactor: _animation,
      child: widget.child,
    );
  }
}
