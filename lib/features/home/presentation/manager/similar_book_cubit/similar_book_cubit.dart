import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/features/home/data/models/BookModel.dart';
import 'package:my_bookly/features/home/data/repos/home_repo.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBooksState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());

    var result = await homeRepo.fetchSimilarBooks(category: category);

    result.fold(
      (failure) {
        emit(SimilarBooksFailure(failure.errorMessage));
      },
      (books) {
        emit(SimilarBooksSuccess(books));
      },
    );
  }
}
