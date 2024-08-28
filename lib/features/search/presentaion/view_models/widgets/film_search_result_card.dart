import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/custom_vertical_divider.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/movie_duration_time.dart';
import 'package:cinemax_app/core/utils/movie_gener.dart';
import 'package:cinemax_app/core/utils/movie_year_published.dart';
import 'package:cinemax_app/core/utils/pg_13_.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/stack_image_search.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FilmSearchResultCard extends StatelessWidget {
  const FilmSearchResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approuter.kDetailView);
      },
      child: Row(
        children: [
          const SearchImageStack(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Spider-Man No Way',
                  maxLines: 1,
                  style: AppStyles.textstyle16,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 12,
                ),
                const MovieYearPublished(),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  children: [
                    MovieDurationTime(),
                    SizedBox(
                      width: 16,
                    ),
                    PGContainer()
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    const MovieGener(),
                    const CustomVerticalDivider(),
                    Text(
                      'Movie',
                      style: AppStyles.textstyle12.copyWith(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
