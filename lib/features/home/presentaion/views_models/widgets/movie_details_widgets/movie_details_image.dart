import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:flutter/material.dart';

class MoiveDetailsImage extends StatelessWidget {
  const MoiveDetailsImage({
    super.key,
    required this.movieDetailsEntity,
  });

  final MovieDetailsEntity movieDetailsEntity;

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
        imageUrl: '$baseImageUrl${movieDetailsEntity.image}',
      ),
    );
  }
}
