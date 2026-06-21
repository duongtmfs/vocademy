import 'package:flutter/material.dart';

class VideoSlide extends StatefulWidget {
  final String videoUrl;

  const VideoSlide({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  State<VideoSlide> createState() => _VideoSlideState();
}

class _VideoSlideState extends State<VideoSlide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: const Center(
        child: Text('Video Player'),
      ),
    );
  }
}
