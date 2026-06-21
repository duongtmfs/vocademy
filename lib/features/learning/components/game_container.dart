import 'package:flutter/material.dart';

class GameContainer extends StatelessWidget {
  final Widget child;
  final String title;

  const GameContainer({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: child,
    );
  }
}
