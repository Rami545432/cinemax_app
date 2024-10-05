import 'package:cinemax_app/core/utils/custom_vertical_divider.dart';
import 'package:cinemax_app/core/utils/movie_duration_time.dart';
import 'package:cinemax_app/core/utils/movie_gener.dart';
import 'package:cinemax_app/core/utils/movie_year_published.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity_details.dart';
import 'package:flutter/material.dart';

class TvInfo extends StatelessWidget {
  const TvInfo({
    super.key,
    required this.seriesEntityDetails,
  });
  final SeriesEntityDetails seriesEntityDetails;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MovieYearPublished(
            date: seriesEntityDetails.firstDate,
          ),
          const CustomVerticalDivider(),
          MovieDurationTime(
            duration: 50,
          ),
          const CustomVerticalDivider(),
          MovieGener(
            geners: seriesEntityDetails.geners,
          ),
        ],
      ),
    );
  }
}
