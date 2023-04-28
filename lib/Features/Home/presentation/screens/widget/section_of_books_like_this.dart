import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'body_list_view_like_this_book.dart';
import 'list_view_like_this_book.dart';

class SectionOfBooksLikeThis extends StatelessWidget {
  const SectionOfBooksLikeThis({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "You Can See Also Like",
          style: Styles.text14w600,
        ),
        SizedBox(
          height: 16,
        ),
        // BodyOfListViewLikeThisBook(),
      ],
    );
  }
}
