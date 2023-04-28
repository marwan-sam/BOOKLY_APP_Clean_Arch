import 'package:bookly_app/Features/Home/data/models/books_model/books_model.dart';
import 'package:flutter/material.dart';

import 'app_bar_book_details.dart';
import 'section_of_books_like_this.dart';
import 'section_of_book_details.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});

  final BooksModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const AppBarDetailsBook(),
                SectionOfBookDetails(
                  book: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SectionOfBooksLikeThis(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
