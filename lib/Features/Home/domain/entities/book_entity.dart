class BookEntity {
  final String title;
  final String? image;
  final String? authorName;
  final num? rating;
  final num? price;
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
