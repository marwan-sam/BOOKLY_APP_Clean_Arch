import 'package:bookly_app/core/constants.dart';
import 'package:bookly_app/core/widgets/loading_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShimmerImageBook extends StatelessWidget {
  const ShimmerImageBook({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingShimmer(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.8 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imgNotAvalible,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
