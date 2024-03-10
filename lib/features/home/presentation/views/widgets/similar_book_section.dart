import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'similar_book_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "You can also like",
            style: Styles.textStyle18,
          ),
          SimilarBooksListView(),
        ],
      ),
    );
  }
}
