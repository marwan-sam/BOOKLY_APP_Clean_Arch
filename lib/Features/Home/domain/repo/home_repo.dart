import 'package:bookly_app/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchNewsBooks();
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBooks();
  Future<Either<Failure, List<BookEntity>>> fetchLikeThisBook({
    String? category,
  });
}
