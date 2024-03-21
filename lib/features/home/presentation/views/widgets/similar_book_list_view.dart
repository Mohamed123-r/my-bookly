import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/core/widgets/custom_error_widget.dart';
import 'package:my_bookly/core/widgets/custom_loading_fealear_book.dart';
import '../../../../../core/utils/app_router.dart';
import '../../manager/similar_book_cubit/similar_book_cubit.dart';
import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.18,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.book.length,
              itemBuilder: (contest, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsView,
                        extra: state.book[index],
                      );
                    },
                    child: CustomBookItem(
                      urlImage:
                          state.book[index].volumeInfo?.imageLinks?.thumbnail ??
                              "",
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else {
          return SizedBox(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.18,
            child: const Center(
              child:CustomLoadingBookItem(),
            ),
          );
        }
      },
    );
  }
}
