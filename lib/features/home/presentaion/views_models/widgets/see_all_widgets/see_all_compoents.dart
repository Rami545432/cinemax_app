import 'package:cinemax_app/core/utils/pg_13_.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/utils/custom_vertical_divider.dart';
import 'see_all_date.dart';
import 'see_all_gener.dart';

class SeeAllComponetsInfo extends StatelessWidget {
  const SeeAllComponetsInfo({
    super.key,
    required this.movieEntity,
  });

  final MovieEntity movieEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const PGContainer(),
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
    );
  }
}
