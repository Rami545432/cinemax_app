import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_widgets/see_all_film_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'see_all_compoents.dart';

class SeeAllFilmCard extends StatelessWidget {
  const SeeAllFilmCard({
    super.key,
    required this.movieEntity,
  });
  final MovieEntity movieEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(Approuter.kMovieDetailView, extra: movieEntity.movieId);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 16),
        child: Row(
          children: [
            SeeAllImageStack(
              imageUrl: movieEntity.image,
              rating: movieEntity.rating,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SeeAllComponetsInfo(
                  title: movieEntity.moviTtitle,
                  geners: movieEntity.gener,
                  type: 'Movie',
                  date: movieEntity.date,
                )),
          ],
        ),
      ),
    );
  }
}
