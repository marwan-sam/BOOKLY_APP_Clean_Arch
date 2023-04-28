import 'package:bookly_app/Features/Home/domain/entities/book_entity.dart';

abstract class HomeLocalData {
  List<BookEntity> fetchNewsBooks();
  List<BookEntity> fetchFeatureBooks();
  List<BookEntity> fetchLikeThisBook({
    String? category,
  });
}

class HomeLocalDataImpl implements HomeLocalData {
  @override
  List<BookEntity> fetchFeatureBooks() {
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchLikeThisBook({String? category}) {
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewsBooks() {
    throw UnimplementedError();
  }
}
