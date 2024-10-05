import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/custom_vertical_divider.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/pg_13_.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_widgets/see_all_date.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_widgets/see_all_gener.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/stack_image_search.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FilmSearchResultCard extends StatelessWidget {
  const FilmSearchResultCard({super.key, required this.movieEntity});
  final MovieEntity movieEntity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              GoRouter.of(context)
                  .push(Approuter.kDetailView, extra: movieEntity.movieId);
            },
            child: Row(
              children: [
                SearchImageStack(
                  movieEntity: movieEntity,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movieEntity.moviTtitle,
                        maxLines: 1,
                        style: AppStyles.textstyle16,
                        overflow: TextOverflow.ellipsis,
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
                      const Row(
                        children: [
                          // MovieDurationTime(),
                          // SizedBox(
                          //   width: 16,
                          // ),
                          PGContainer()
                        ],
                      ),
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
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
