import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/features/home/data/models/BookModel.dart';
import '../../../data/repos/home_repo.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(errorMessage: failure.errorMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books: books));
      },
    );
  }
}
