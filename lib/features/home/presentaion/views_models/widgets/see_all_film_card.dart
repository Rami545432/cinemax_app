import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/custom_vertical_divider.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_date.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_film_image.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_gener.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        GoRouter.of(context).push(Approuter.kDetailView, extra: movieEntity.movieId);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 24,bottom: 16),
        child: Row(
          children: [
            SeeAllImageStack(
              movieEntity: movieEntity,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        movieEntity.moviTtitle,
                        maxLines: 2,
                        style: AppStyles.textstyle16,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    SeeAllYearPublished(
                      movieEntity: movieEntity,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    // const Row(
                    //   children: [
                    //     MovieDurationTime(),
                    //     SizedBox(
                    //       width: 16,
                    //     ),
                    //     PGContainer()
                    //   ],
                    // ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        SeeAllMovieGener(
                          movieEntity: movieEntity,
                        ),
                        const CustomVerticalDivider(),
                        Text(
                          'Movie',
                          style: AppStyles.textstyle12.copyWith(
                              fontWeight: FontWeight.w600, color: Colors.white),
                        )
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
