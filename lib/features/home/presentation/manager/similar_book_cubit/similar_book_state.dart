part of 'similar_book_cubit.dart';


sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> book;
  SimilarBooksSuccess(this.book);
}
final class SimilarBooksFailure extends SimilarBooksState {
  final String errMessage;
  SimilarBooksFailure(this.errMessage);
}
final class SimilarBooksLoading extends SimilarBooksState {}
