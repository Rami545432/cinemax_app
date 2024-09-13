import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/rating.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:flutter/material.dart';

class SeeAllImageStack extends StatelessWidget {
  const SeeAllImageStack({
    super.key,
    required this.movieEntity,
  });
  final MovieEntity movieEntity;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
              errorWidget: (context, url, error) {
                return const Icon(Icons.add_ic_call_outlined);
              },
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width * 0.27,
              imageUrl: '$baseImageUrl${movieEntity.image}'),
        ),
        Positioned(
          left: 45,
          top: 6,
          child: Rating(
          movieEntity: movieEntity,
          ),
        ),
      ],
    );
  }
}
