import 'package:flutter/material.dart';
import 'custom_book_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.33,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (contest, index) {
            return const Padding(
              padding: EdgeInsets.only(right:12.0),
              child: CustomBookItem(),
            );
          }),
    );
  }
}