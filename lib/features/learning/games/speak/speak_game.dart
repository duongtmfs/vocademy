import 'package:flutter/material.dart';

class SpeakGame extends StatefulWidget {
  const SpeakGame({Key? key}) : super(key: key);

  @override
  State<SpeakGame> createState() => _SpeakGameState();
}

class _SpeakGameState extends State<SpeakGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speak'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Speak Game'),
          ],
        ),
      ),
    );
  }
}
