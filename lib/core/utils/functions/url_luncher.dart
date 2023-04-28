import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'message.dart';

Future<void> launchURL(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      // throw Exception('Could not launch $uri');
      getMessage(
        context,
        'Could not launch $uri',
        const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      );
    } else {
      getMessage(
        context,
        'this book available',
        const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      );
      await launchUrl(uri);
    }
  }
}
