import 'package:bookly_app/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, NoParameter> {
  Future<Either<Failure, List<BookEntity>>> execute([NoParameter parameter]);
}
