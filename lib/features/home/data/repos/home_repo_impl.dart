import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_bookly/core/errors/failure.dart';
import 'package:my_bookly/core/utils/api_service.dart';
import 'package:my_bookly/features/home/data/models/BookModel.dart';
import 'package:my_bookly/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
        "volumes?Filtering=free-ebooks&q=subject:love",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
        print("objectdsd");
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {print("objesdct");
        return left(ServerFailure.fromDioException(e));

      }
      print("object");
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
        "volumes?Filtering=free-ebooks&q=subject:love",
      );
      List<BookModel> books = [];
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
