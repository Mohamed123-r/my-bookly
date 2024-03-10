import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/styles.dart';
import 'custom_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            hintText: 'Enter Name Book',
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Search Resent",
            style: Styles.textStyle20,
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
