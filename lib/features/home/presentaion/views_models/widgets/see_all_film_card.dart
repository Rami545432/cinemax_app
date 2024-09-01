import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/custom_vertical_divider.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/movie_duration_time.dart';
import 'package:cinemax_app/core/utils/movie_gener.dart';
import 'package:cinemax_app/core/utils/movie_year_published.dart';
import 'package:cinemax_app/core/utils/pg_13_.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_movie_details_cubit/fetch_movie_details_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_date.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_film_image.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_gener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        GoRouter.of(context).push(Approuter.kDetailView, extra: movieEntity);
      },
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
    );
  }
}
