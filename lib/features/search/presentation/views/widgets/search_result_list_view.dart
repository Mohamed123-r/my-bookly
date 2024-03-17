import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/core/utils/app_router.dart';


class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kBookDetailsView);
            },
        child: const Text(
          'Book Title ',
        ),
        );
            // child: const BestSellerListViewItem());
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
    );
  }
}
