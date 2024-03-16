import 'package:flutter/material.dart';


class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.urlImage});
final String urlImage;
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
            image:  DecorationImage(
              fit:BoxFit.fill,
              image: NetworkImage(
                urlImage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
