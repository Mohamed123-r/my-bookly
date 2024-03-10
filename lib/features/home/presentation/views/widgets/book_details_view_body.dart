import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_details_appBar.dart';
import 'custom_book_item.dart';
import 'similar_book_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.38,
                  child: const CustomBookItem(),
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
                ),
                const SizedBox(
                  height: 32,
                ),
                const BookAction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: Styles.textStyle18,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: SimilarBooksListView(),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
