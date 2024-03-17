import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.38,
          child: const CustomBookItem(
            urlImage:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBH7FYPG4BzU9tXf0X219vEtd_9pC_C3SBX5ZffwygbQ&s',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle32,
        ),
        Text(
          "Rudyard Kipling",
          style: Styles.textStyle20.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 44,
          ratingCount: 44,
        ),
      ],
    );
  }
}
