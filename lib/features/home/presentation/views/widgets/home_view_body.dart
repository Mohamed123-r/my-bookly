import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'best_seller_list_view.dart';
import 'books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomAppBar(),
                ),
                BooksListView(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Best Seller",
                    style: Styles.textStyle20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: BestSellerListView(),
            ),
          ),
        ],
      ),
    );
  }
}
