import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/Features/Home/domain/data/models/books_model/books_model.dart';
import 'package:bookly_app/Features/Home/presentation/screens/widget/star_ratting_item_ui.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/router_app.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_img_Item_ui.dart';

class ItemInListViewSearch extends StatelessWidget {
  const ItemInListViewSearch({
    super.key,
    required this.bookModel,
  });
  final BooksModel bookModel;

  @override
  Widget build(BuildContext context) {
    var widthDev = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(RouterApp.keyBookDetailsRoute, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            ImageBookItem(
              urlImg: bookModel.volumeInfo.imageLinks?.thumbnail ??
                  bookModel.volumeInfo.imageLinks?.smallThumbnail ??
                  imgNotAvalible,
            ),
            Padding(
              padding: EdgeInsets.only(left: widthDev * 0.1, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: widthDev * 0.5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.text20normal.copyWith(
                        fontFamily: familyGTSectraFineRegular,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  SizedBox(
                    width: widthDev * 0.5,
                    child: Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.text16w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "Free€",
                        overflow: TextOverflow.ellipsis,
                        style: Styles.text20w800,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.19,
                      ),
                      StarAndRattingUI(
                        rate: bookModel.volumeInfo.averageRating ?? 0.0,
                        views: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
