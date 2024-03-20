import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import '../../../data/models/BookModel.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.38,
          child: CustomBookItem(
            urlImage: book.volumeInfo.imageLinks?.thumbnail ?? " ",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          book.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle32,
        ),
        Text(
          book.volumeInfo.authors![0],
          style: Styles.textStyle20.copyWith(
            color: Colors.grey,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.volumeInfo.averageRating ?? 0,
          ratingCount: book.volumeInfo.ratingsCount ?? 0,
        ),
      ],
    );
  }
}
