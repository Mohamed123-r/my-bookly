import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: 200,
      logo: Image.asset(
        AssetsData.logo,
      ),
      title: const Text(
        "Read free books",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: kPrimaryColor,
      showLoader: true,
      loaderColor: Colors.white,
      loadingText: const Text("Loading..."),
      navigator: Container(),
      durationInSeconds: 15,
    );
  }
}
