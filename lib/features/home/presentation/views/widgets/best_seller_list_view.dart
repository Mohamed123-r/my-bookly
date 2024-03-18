import 'package:flutter/material.dart';
import 'package:my_bookly/core/widgets/custom_loading_newest_book.dart';
import 'package:my_bookly/core/widgets/custom_error_widget.dart';
import 'package:my_bookly/features/home/presentation/manager/news_books/news_books_cubit.dart';
import 'custom_best_seller_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBooksCubit, NewsBooksState>(
        builder: (context, state) {
      if (state is NewsBooksSuccess) {
        return ListView.builder(
          itemCount: state.books.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return BestSellerListViewItem(
              book: state.books[index],
            );
          },
        );
      } else if (state is NewsBooksFailure) {
        return CustomErrorWidget(errorMessage: state.errorMessage);
      } else {
        return  const CustomLoadingNewestBook();
      }
    });
  }
}
