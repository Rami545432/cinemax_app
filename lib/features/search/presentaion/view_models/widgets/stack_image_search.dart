import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/rating.dart';
import 'package:flutter/material.dart';

class SearchImageStack extends StatelessWidget {
  const SearchImageStack({
    super.key,
    required this.imageUrl,
    required this.rating,
  });

  final String imageUrl;
  final num rating;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            errorWidget: (context, url, error) {
              return const Icon(Icons.cancel_presentation);
            },
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.27,
            imageUrl: '$baseImageUrl$imageUrl',
          ),
        ),
        Positioned(
          left: 45,
          top: 6,
          child: Rating(
            rating: rating,
          ),
        ),
      ],
    );
  }
}
