import 'package:flutter/material.dart';

class ChooseAnswerGame extends StatefulWidget {
  const ChooseAnswerGame({Key? key}) : super(key: key);

  @override
  State<ChooseAnswerGame> createState() => _ChooseAnswerGameState();
}

class _ChooseAnswerGameState extends State<ChooseAnswerGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Answer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Choose Answer Game'),
          ],
        ),
      ),
    );
  }
}
