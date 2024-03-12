import 'package:dartz/dartz.dart';
import 'package:my_bookly/core/errors/failure.dart';
import 'package:my_bookly/features/home/data/models/BookModel.dart';
import 'package:my_bookly/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failure, List<BookModel>>> fetchBastSellerBooks() {

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {

    throw UnimplementedError();
  }
}