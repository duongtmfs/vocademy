import 'package:flutter/material.dart';

class ListenChooseGame extends StatefulWidget {
  const ListenChooseGame({Key? key}) : super(key: key);

  @override
  State<ListenChooseGame> createState() => _ListenChooseGameState();
}

class _ListenChooseGameState extends State<ListenChooseGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listen & Choose'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Listen & Choose Game'),
          ],
        ),
      ),
    );
  }
}
