import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/Features/Home/data/models/books_model/books_model.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_img_Item_ui.dart';
import 'button_actions.dart';
import 'star_ratting_item_ui.dart';

class SectionOfBookDetails extends StatelessWidget {
  const SectionOfBookDetails({super.key, required this.book});
  final BooksModel book;
  @override
  Widget build(BuildContext context) {
    var widthDev = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthDev * 0.2),
          child: ImageBookItem(
            urlImg: book.volumeInfo.imageLinks?.thumbnail ??
                book.volumeInfo.imageLinks?.smallThumbnail ??
                imgNotAvalible,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo.title!,
          textAlign: TextAlign.center,
          maxLines: 2,
          style: Styles.text30normal,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          maxLines: 1,
          book.volumeInfo.authors?[0] ?? "no info :(",
          style: Styles.text18bold.copyWith(
            color: Colors.white.withOpacity(0.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        StarAndRattingUI(
          rate: book.volumeInfo.averageRating ?? 0,
          views: book.volumeInfo.ratingsCount ?? 0000,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        ButtonActions(
          book: book,
        ),
      ],
    );
  }
}
