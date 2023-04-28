import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String? image;
  @HiveField(2)
  final String? authorName;
  @HiveField(3)
  final num? rating;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final String idBook;

  BookEntity({
    required this.idBook,
    required this.title,
    required this.image,
    required this.authorName,
    required this.rating,
    required this.price,
  });
}
