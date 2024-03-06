import 'package:flutter/material.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount:20,
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
    );
  }
}
