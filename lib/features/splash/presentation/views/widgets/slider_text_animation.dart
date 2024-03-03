import 'package:flutter/material.dart';

class SliderTextAnimation extends StatelessWidget {
  const SliderTextAnimation(
      {super.key,
      required this.fontSize,
      required this.textOpacity,
      required this.animation1});

  final double fontSize;
  final double textOpacity;
  final Animation<double> animation1;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        AnimatedContainer(
            duration: const Duration(milliseconds: 2000),
            curve: Curves.fastLinearToSlowEaseIn,
            height: height / fontSize),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 1000),
          opacity: textOpacity,
          child: Text(
            'Read free books',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: animation1.value,
            ),
          ),
        ),
      ],
    );
  }
}
