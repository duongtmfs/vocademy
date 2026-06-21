import 'package:flutter/material.dart';

class FireworkAnimation extends StatefulWidget {
  final Duration duration;

  const FireworkAnimation({
    Key? key,
    this.duration = const Duration(milliseconds: 500),
  }) : super(key: key);

  @override
  State<FireworkAnimation> createState() => _FireworkAnimationState();
}

class _FireworkAnimationState extends State<FireworkAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween<double>(begin: 0, end: 1).animate(_controller),
      child: const Icon(
        Icons.celebration,
        size: 100,
        color: Colors.yellow,
      ),
    );
  }
}
