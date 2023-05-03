import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:bookly_app/core/constants.dart';
import 'package:flutter/material.dart';

class BottomBarFloat extends StatefulWidget {
  BottomBarFloat({
    super.key,
    required this.items,
    required this.currentIndex,
  });
  List<TabItem<dynamic>> items;
  int currentIndex = 0;

  @override
  State<BottomBarFloat> createState() => _BottomBarFloatState();
}

class _BottomBarFloatState extends State<BottomBarFloat> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 0, bottom: 7),
        child: BottomBarFloating(
          borderRadius: BorderRadius.circular(30),
          blur: 5,
          backgroundColor: backgroundAppBarF,
          color: colorAppBarNotSelected,
          colorSelected: colorAppBarSelected,
          items: widget.items,
          indexSelected: widget.currentIndex,
          onTap: (int index) {
            setState(() {
              widget.currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
