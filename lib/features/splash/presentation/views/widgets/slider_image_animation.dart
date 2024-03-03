import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';

class SliderImageAnimation extends StatelessWidget {
  const SliderImageAnimation({
    super.key,
    required this.containerOpacity,
    required this.containerSize,
  });

  final double containerOpacity;
  final double containerSize;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 2000),
        curve: Curves.fastLinearToSlowEaseIn,
        opacity: containerOpacity,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 2000),
          curve: Curves.fastLinearToSlowEaseIn,
          height: width / containerSize,
          width: width / containerSize,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          // child: Image.asset('assets/images/file_name.png')
          child: Image.asset(
            AssetsData.logo,
            width: 170,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
