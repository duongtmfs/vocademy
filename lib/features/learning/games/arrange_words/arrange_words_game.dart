import 'package:flutter/material.dart';

class ArrangeWordsGame extends StatefulWidget {
  const ArrangeWordsGame({Key? key}) : super(key: key);

  @override
  State<ArrangeWordsGame> createState() => _ArrangeWordsGameState();
}

class _ArrangeWordsGameState extends State<ArrangeWordsGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arrange Words'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Arrange Words Game'),
          ],
        ),
      ),
    );
  }
}
