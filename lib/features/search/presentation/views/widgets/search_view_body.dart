import 'package:flutter/material.dart';
import 'package:my_bookly/features/search/presentation/views/widgets/custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Enter Name Book',
          ),
        ],
      ),
    );
  }
}
