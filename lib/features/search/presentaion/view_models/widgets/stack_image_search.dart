import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/rating.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:flutter/material.dart';

class SearchImageStack extends StatelessWidget {
  const SearchImageStack({
    super.key,
    required this.movieEntity,
  });
  final MovieEntity movieEntity;
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
            imageUrl: '$baseImageUrl${movieEntity.image}',
          ),
        ),
        Positioned(
          left: 45,
          top: 6,
          child: Rating(
            rating: movieEntity.rating,
          ),
        ),
      ],
    );
  }
}
