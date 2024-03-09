import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.close,
        ),
      ),
      actions: [IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.shopping_cart,
        ),
      ),],
    );
  }
}