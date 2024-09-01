import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/rating.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:flutter/material.dart';

class SeeAllImageStack extends StatelessWidget {
  const SeeAllImageStack({
    super.key, required this.movieEntity,
  });
final MovieEntity movieEntity;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image(
          image: NetworkImage('$baseImageUrl${movieEntity.image}'),
          width: 112,
          height: 147,
        ),
        const Positioned(
          left: 45,
          top: 6,
          child: Rating(),
        ),
      ],
    );
  }
}
