import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.5",
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2234)",
          style: Styles.textStyle16.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
