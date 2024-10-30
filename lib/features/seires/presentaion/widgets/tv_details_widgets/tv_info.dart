import 'package:cinemax_app/core/utils/custom_vertical_divider.dart';
import 'package:cinemax_app/core/utils/duration_time.dart';
import 'package:cinemax_app/core/utils/gener.dart';
import 'package:cinemax_app/core/utils/year_published.dart';
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
          YearPublished(
            date: seriesEntityDetails.firstDate,
          ),
          const CustomVerticalDivider(),
          DurationTime(
            duration: seriesEntityDetails.runtime.toInt(),
          ),
          const CustomVerticalDivider(),
          Gener(
            geners: seriesEntityDetails.geners,
          ),
        ],
      ),
    );
  }
}
