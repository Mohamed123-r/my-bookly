import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.ratingCount,
  });

  final MainAxisAlignment mainAxisAlignment;
  final num rating;

  final num ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "($ratingCount)",
          style: Styles.textStyle16.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
