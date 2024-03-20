import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/features/home/data/models/BookModel.dart';

import '../manager/similar_book_cubit/similar_book_cubit.dart';
import 'widgets/book_details_view_body.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModel book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBookCubit>(context)
        .fetchSimilarBooks(category: widget.book.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return BookDetailsViewBody(
      bookModel: widget.book,
    );
  }
}
