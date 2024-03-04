import 'package:flutter/material.dart';
import 'package:my_bookly/features/home/presentation/views/widgets/custom_app_bar.dart';

import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomAppBar(),
            CustomListViewItem(),
          ],
        ),
      ),
    );
  }
}
