import 'package:flutter/material.dart';

class LearningSessionPage extends StatefulWidget {
  final String lessonId;

  const LearningSessionPage({
    Key? key,
    required this.lessonId,
  }) : super(key: key);

  @override
  State<LearningSessionPage> createState() => _LearningSessionPageState();
}

class _LearningSessionPageState extends State<LearningSessionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Session'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Lesson: ${widget.lessonId}'),
          ],
        ),
      ),
    );
  }
}
