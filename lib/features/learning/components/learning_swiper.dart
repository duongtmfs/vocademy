import 'package:flutter/material.dart';

class LearningSwiper extends StatefulWidget {
  final List<Widget> slides;
  final Function(int) onPageChanged;

  const LearningSwiper({
    Key? key,
    required this.slides,
    required this.onPageChanged,
  }) : super(key: key);

  @override
  State<LearningSwiper> createState() => _LearningSwiperState();
}

class _LearningSwiperState extends State<LearningSwiper> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: widget.onPageChanged,
      children: widget.slides,
    );
  }
}
