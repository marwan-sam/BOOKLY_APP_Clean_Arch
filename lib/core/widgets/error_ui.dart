import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ErrorUI extends StatelessWidget {
  const ErrorUI({super.key, required this.messageError});
  final String messageError;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        messageError,
        textAlign: TextAlign.center,
        style: Styles.text18w600.copyWith(color: Colors.red),
      ),
    );
  }
}
