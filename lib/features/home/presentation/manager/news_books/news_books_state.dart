part of 'news_books_cubit.dart';

@immutable
abstract class NewsBooksState {}

class NewsBooksInitial extends NewsBooksState {}

class NewsBooksLoading extends NewsBooksState {}

class NewsBooksFailure extends NewsBooksState {
  final String errorMessage;

  NewsBooksFailure({required this.errorMessage});
}

class NewsBooksSuccess extends NewsBooksState {
  final List<BookModel> books;

  NewsBooksSuccess({required this.books});
}
