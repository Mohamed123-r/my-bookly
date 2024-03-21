import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.color,
    this.textColor = Colors.white,
    this.borderRadius, required this.onPressed,
  });

  final String title;
  final int color;
  final Color textColor;
  final BorderRadiusGeometry? borderRadius;
  final void Function() onPressed ;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 48,
      minWidth: MediaQuery.of(context).size.width * 0.42,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(15),
      ),
      color: Color(color),
      onPressed: onPressed,
      child: Text(
        title,
        style: Styles.textStyle16.copyWith(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
