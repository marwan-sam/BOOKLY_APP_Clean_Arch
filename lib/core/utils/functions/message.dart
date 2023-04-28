import 'package:flutter/material.dart';

Future<void> getMessage(context, String message, TextStyle styleTxt) async {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: styleTxt,
      ),
    ),
  );
}
