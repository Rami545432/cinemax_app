import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:flutter/material.dart';

class DetailsViewImage extends StatelessWidget {
  const DetailsViewImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 108,
      right: 85,
      left: 85,
      child: CachedNetworkImage(
        errorWidget: (context, url, error) {
          return const Icon(Icons.error_outline_sharp);
        },
        height: 287,
        width: 205,
        imageUrl: '$baseImageUrl$imageUrl',
      ),
    );
  }
}
