import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:flutter/material.dart';

class OpacityDeatailMovieImage extends StatelessWidget {
  const OpacityDeatailMovieImage({
    super.key,
    required this.movieEntity,
  });
  final MovieDetailsEntity? movieEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xff1F1D2B).withOpacity(0.57),
            const Color(0xff1F1D2B),
          ],
        ),
      ),
      child: Opacity(
        opacity: 0.2,
        child: CachedNetworkImage(
            errorWidget: (context, url, error) {
              return const Text('NO IMAGE');
            },
            fit: BoxFit.cover,
            imageUrl:
                '$baseImageUrl${movieEntity?.image ?? movieEntity?.image}'),
      ),
    );
  }
}
