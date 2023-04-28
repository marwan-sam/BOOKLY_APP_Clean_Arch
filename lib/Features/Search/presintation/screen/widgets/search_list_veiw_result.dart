// import 'package:flutter/material.dart';

// class ListViewResult extends StatefulWidget {
//   const ListViewResult({super.key});

//   @override
//   State<ListViewResult> createState() => _ListViewResultState();
// }

// class _ListViewResultState extends State<ListViewResult> {
  // @override
  // Widget build(BuildContext context) {
    // return BlocBuilder<SreachBookCubit, SreachBookState>(
    //   builder: (context, state) {
    //     if (state is SreachBookSucc) {
    //       return ListView.builder(
    //         shrinkWrap: true,
    //         physics: const NeverScrollableScrollPhysics(),
    //         padding: EdgeInsets.zero,
    //         itemCount: state.books.length,
    //         itemBuilder: (context, index) {
    //           return Padding(
    //             padding: const EdgeInsets.symmetric(vertical: 10.0),
    //             child: ItemInListViewBest(
    //               bookModel: state.books[index],
    //             ),
    //           );
    //         },
    //       );
    //     } else if (state is SreachBookError) {
    //       return ErrorUI(
    //         messageError: state.message,
    //       );
    //     } else {
    //       return const LoadingIndicator();
    //     }
    //   },
    // );
  // }
// }
