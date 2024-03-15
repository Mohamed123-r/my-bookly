import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/core/widgets/Custom_circle_adator.dart';
import 'package:my_bookly/core/widgets/custom_error_widget.dart';
import 'package:my_bookly/features/home/presentation/manager/features_book_cubit/featured_books_cubit.dart';
import 'custom_book_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state)
    {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery
              .sizeOf(context)
              .height * 0.33,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (contest, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: CustomBookItem(),
                );
              }),
        );
      }
      else if(state is FeaturedBooksFailure) {
        return  CustomErrorWidget(errorMessage: state.errorMessage,);
      }
        return const CustomLoadingIndicator();
      }
    );
  }
}