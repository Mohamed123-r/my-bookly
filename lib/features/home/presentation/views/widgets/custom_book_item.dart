import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
            image: const DecorationImage(
              fit:BoxFit.fill,
              image: AssetImage(
                AssetsData.test,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
