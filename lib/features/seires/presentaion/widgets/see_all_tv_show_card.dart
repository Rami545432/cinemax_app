import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_widgets/see_all_film_image.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../home/presentaion/views_models/widgets/see_all_widgets/see_all_compoents.dart';



class SeeAllTvShowCard extends StatelessWidget {
  const SeeAllTvShowCard({
    super.key,
    required this.seriesEntity,
  });
  final SeriesEntity seriesEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(Approuter.kTvDetailsView, extra: seriesEntity.tvId);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 24, bottom: 16),
        child: Row(
          children: [
            SeeAllImageStack(
              rating: seriesEntity.tvRating,
              imageUrl: seriesEntity.tvPosterPath,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SeeAllComponetsInfo(
                  title: seriesEntity.tvName,
                  geners: seriesEntity.gener,
                  type: 'Tv Seires',
                  date: seriesEntity.tvFirstAirDate,
                )),
          ],
        ),
      ),
    );
  }
}
