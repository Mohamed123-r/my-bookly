import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (contest, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: CustomBookItem(urlImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBH7FYPG4BzU9tXf0X219vEtd_9pC_C3SBX5ZffwygbQ&s',),
          );
        },
      ),
    );
  }
}