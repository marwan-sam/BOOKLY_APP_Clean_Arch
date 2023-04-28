import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'shimmer_image_book.dart';

class ImageBookItem extends StatelessWidget {
  const ImageBookItem({super.key, required this.urlImg});

  final String urlImg;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: urlImg,
          placeholder: (context, url) => const ShimmerImageBook(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
