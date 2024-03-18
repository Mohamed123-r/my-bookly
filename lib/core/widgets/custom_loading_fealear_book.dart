import 'package:flutter/material.dart';

class CustomLoadingBookItem extends StatelessWidget {
  const CustomLoadingBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
