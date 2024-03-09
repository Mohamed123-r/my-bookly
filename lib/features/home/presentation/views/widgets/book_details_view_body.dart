import 'package:flutter/material.dart';

import 'custom_book_details_appBar.dart';
import 'custom_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          const CustomBookDetailsAppBar(),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.40,
              child: const CustomBookItem()),
        ],
      ),
    );
  }
}


