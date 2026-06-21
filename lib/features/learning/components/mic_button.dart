import 'package:flutter/material.dart';

class MicButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool isRecording;

  const MicButton({
    Key? key,
    required this.onPressed,
    required this.isRecording,
  }) : super(key: key);

  @override
  State<MicButton> createState() => _MicButtonState();
}

class _MicButtonState extends State<MicButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: widget.onPressed,
      backgroundColor: widget.isRecording ? Colors.red : Colors.blue,
      child: Icon(
        widget.isRecording ? Icons.stop : Icons.mic,
      ),
    );
  }
}
