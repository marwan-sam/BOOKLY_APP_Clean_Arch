import 'package:bookly_app/core/widgets/error_ui.dart';
import 'package:bookly_app/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
import 'item_in_list_best_seller.dart';

// class FeatureListViewBestSeller extends StatelessWidget {
//   const FeatureListViewBestSeller({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // return BlocBuilder<BestSellerCubit, BestSellerState>(
//         builder: (context, state) {
//       if (state is BestSellerSucc) {
//         return ListView.builder(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           padding: EdgeInsets.zero,
//           itemCount: state.books.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10.0),
//               child: ItemInListViewBest(
//                 bookModel: state.books[index],
//               ),
//             );
//           },
//         );
//       } else if (state is BestSellerError) {
//         return ErrorUI(
//           messageError: state.message,
//         );
//       } else {
//         return const LoadingIndicator();
//       }
//     });
//   }
// }
