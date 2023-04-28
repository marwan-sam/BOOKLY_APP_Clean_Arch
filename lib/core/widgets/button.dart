import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  ButtonApp({
    super.key,
    required this.txt,
    required this.colorTxt,
    required this.backgroundColorBtn,
    this.borderRadius,
    this.onClick,
  });
  final String txt;
  final Color colorTxt;
  final Color backgroundColorBtn;
  BorderRadiusGeometry? borderRadius;
  final void Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onClick,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColorBtn,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16))),
        child: Text(
          txt,
          style: Styles.text16w900.copyWith(
            color: colorTxt,
          ),
        ),
      ),
    );
  }
}
