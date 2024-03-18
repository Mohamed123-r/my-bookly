import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';

import '../utils/assets.dart';

class CustomLoadingBookItem extends StatelessWidget {
  const CustomLoadingBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (contest, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Image.asset(
                AssetsData.logo,
                fit: BoxFit.fill,
              ).redacted(
                context: context,
                redact: true,
                configuration: RedactedConfiguration(
                  animationDuration: const Duration(milliseconds: 500),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
