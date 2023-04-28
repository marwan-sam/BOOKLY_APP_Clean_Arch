import 'package:bookly_app/core/utils/router_app.dart';
import 'package:bookly_app/core/widgets/error_ui.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'book_img_Item_ui.dart';

// class FeatureListViewBooks extends StatelessWidget {
  // const FeatureListViewBooks({super.key});

  // @override
  // Widget build(BuildContext context) {
    // return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
    //   builder: (context, state) {
    //     if (state is FeaturedBooksSucc) {
    //       return SizedBox(
    //         height: MediaQuery.of(context).size.height * 0.3,
    //         child: ListView.builder(
    //           // padding: EdgeInsets.zero,
    //           physics: const BouncingScrollPhysics(),
    //           scrollDirection: Axis.horizontal,
    //           itemCount: state.books.length,
    //           itemBuilder: (context, index) {
    //             return Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //               child: GestureDetector(
    //                 onTap: () {
    //                   GoRouter.of(context).push(
    //                     RouterApp.keyBookDetailsRoute,
    //                     extra: state.books[index],
    //                   );
    //                 },
    //                 child: ImageBookItem(
    //                   urlImg:
    //                       state.books[index].volumeInfo.imageLinks?.thumbnail ??
    //                           state.books[index].volumeInfo.imageLinks
    //                               ?.smallThumbnail ??
    //                           imgNotAvalible,
    //                 ),
    //               ),
    //             );
    //           },
    //         ),
    //       );
    //     } else if (state is FeaturedBooksError) {
    //       return ErrorUI(messageError: state.message);
    //     } else {
    //       return const LoadingIndicator();
    //     }
    //   },
    // );
  // }
// }
