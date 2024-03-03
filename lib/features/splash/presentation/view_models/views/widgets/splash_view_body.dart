
import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 340.0),
          child: Image.asset(
            AssetsData.logo,
          ),
        ),
        const Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: Text(
              "Read free books",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}