import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/horizontal_film_card_widgets/horizontal_film_card_date_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../horizontal_film_card_title_text.dart';

class HorzientalStackContainer extends StatelessWidget {
  const HorzientalStackContainer({
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
      child: Stack(children: [
        Container(
          height: 154,
          margin: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
                width: 400,
                fit: BoxFit.fill,
                errorWidget: (context, url, error) {
                  return const Icon(Icons.error);
                },
                imageUrl: '$baseImageUrl${movieEntity.horizentalImage}'),
          ),
        ),
        HorizontalFilmCardTitleText(movieEntity: movieEntity),
        HorizontalFilmCardDateText(movieEntity: movieEntity),
      ]),
    );
  }
}
