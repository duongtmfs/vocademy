import 'package:flutter/material.dart';

class SwipeHint extends StatelessWidget {
  const SwipeHint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 16,
      left: 0,
      right: 0,
      child: Center(
        child: Text(
          'Swipe to continue →',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
