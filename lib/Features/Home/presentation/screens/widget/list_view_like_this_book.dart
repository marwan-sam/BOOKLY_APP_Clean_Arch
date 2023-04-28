// import 'package:bookly_app/core/widgets/error_ui.dart';
// import 'package:bookly_app/core/widgets/loading_indicator.dart';
// import 'package:flutter/material.dart';

// import 'book_img_Item_ui.dart';

// class ListViewForLikeThisBook extends StatelessWidget {
//   const ListViewForLikeThisBook({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<LikeThisBookCubit, LikeThisBookState>(
//       builder: (context, state) {
//         if (state is LikeThisBookSucc) {
//           return SizedBox(
//             height: MediaQuery.of(context).size.height * 0.15,
//             child: ListView.builder(
//               padding: EdgeInsets.zero,
//               itemCount: state.books.length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 5.0),
//                   child: ImageBookItem(
//                     urlImg:
//                         state.books[index].volumeInfo.imageLinks?.thumbnail ??
//                             state.books[index].volumeInfo.imageLinks
//                                 ?.smallThumbnail ??
//                             imgNotAvalible,
//                   ),
//                 );
//               },
//             ),
//           );
//         } else if (state is LikeThisBookError) {
//           return ErrorUI(
//             messageError: state.e,
//           );
//         } else {
//           return const LoadingIndicator();
//         }
//       },
//     );
//   }
// }
