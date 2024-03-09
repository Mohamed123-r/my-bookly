import 'package:flutter/material.dart';

import 'custom_book_details_appBar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}


