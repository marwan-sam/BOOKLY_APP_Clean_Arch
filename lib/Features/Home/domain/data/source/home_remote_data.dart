import 'package:bookly_app/Features/Home/domain/data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/domain/entities/book_entity.dart';
import 'package:bookly_app/core/utils/api_service.dart';

abstract class HomeRemoteData {
  Future<List<BookEntity>> fetchNewsBooks();
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchLikeThisBook({
    String? category,
  });
}

class HomeRemoteDataImpl extends HomeRemoteData {
  final APISrevice api;

  HomeRemoteDataImpl(this.api);

  @override
  Future<List<BookEntity>> fetchFeatureBooks() async {
    var data = await api.get(
        endPoint: 'volumes?q=subject:chess&Filtering=free-ebooks');
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchLikeThisBook({String? category}) {
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewsBooks() async {
    var data = await api.get(
        endPoint:
            'volumes?q=subject:chess&Filtering=free-ebooks&Sorting=newest');
    List<BookEntity> books = getBooksList(data);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var item in data['items']) {
      books.add(BooksModel.fromJson(item));
    }
    return books;
  }
}
