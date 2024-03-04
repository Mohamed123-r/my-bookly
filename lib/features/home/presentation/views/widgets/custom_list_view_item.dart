import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.3,
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
      ),
    );
  }
}
