import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StarAndRattingUI extends StatelessWidget {
  const StarAndRattingUI({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rate,
    required this.views,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num rate;
  final int views;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: colorStar,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '${rate}',
          style: Styles.text16w500,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(${views})',
          style: Styles.text14w600.copyWith(
            color: colorGrey,
          ),
        ),
      ],
    );
  }
}
