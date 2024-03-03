import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';


class SliderImageAnimation extends StatelessWidget {
  const SliderImageAnimation({super.key, required this.slidingAnimation});
final   Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
          position: slidingAnimation,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 340.0),
            child: Image.asset(
              AssetsData.logo,
            ),
          ),
        );
      },
    );
  }
}
