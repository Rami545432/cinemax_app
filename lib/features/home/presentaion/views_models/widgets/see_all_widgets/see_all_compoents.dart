import 'package:cinemax_app/core/utils/movie_gener.dart';
import 'package:cinemax_app/core/utils/movie_year_published.dart';
import 'package:cinemax_app/core/utils/pg_13_.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/utils/custom_vertical_divider.dart';

class SeeAllComponetsInfo extends StatelessWidget {
  const SeeAllComponetsInfo({
    super.key,
    required this.title,
    required this.date,
    required this.type,
    this.geners,
  });

  final String title, date, type;
  final List<int>? geners;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          child: Text(
            title ,
            maxLines: 2,
            style: AppStyles.textstyle16,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        MovieYearPublished(
          date:date,
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
            MovieGener(
              geners: geners,
            ),
            const CustomVerticalDivider(),
            Text(
              type,
              style: AppStyles.textstyle12
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
