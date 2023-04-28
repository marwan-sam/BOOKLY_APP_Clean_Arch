import 'package:bookly_app/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_app/Features/Home/domain/repo/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewsBooksUseCases extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewsBooksUseCases(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> execute(
      [NoParam? parameter]) async {
    return await homeRepo.fetchNewsBooks();
  }
}

class NoParam {}
