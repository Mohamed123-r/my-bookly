import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/features/home/data/repos/home_repo.dart';
import '../../../data/models/BookModel.dart';
part 'news_books_state.dart';

class NewsBooksCubit extends Cubit<NewsBooksState> {
  NewsBooksCubit(this.homeRepo) : super(NewsBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(NewsBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
          (failure) {
        emit(
          NewsBooksFailure(errorMessage: failure.errorMessage),
        );
      },
          (books) {
        emit(
          NewsBooksSuccess(books: books),
        );
      },
    );
  }
}
