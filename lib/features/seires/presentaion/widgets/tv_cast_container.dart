import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/film_cast_info.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity_details.dart';
import 'package:flutter/material.dart';

class TvCastContainer extends StatelessWidget {
  const TvCastContainer({super.key, required this.seriesEntityDetails});
  final SeriesEntityDetails seriesEntityDetails;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Cast And Crew',
            style: AppStyles.textstyle16,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: seriesEntityDetails.actorDetails.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: FilmCastInfo(
                      actorName:
                          seriesEntityDetails.actorDetails[index].name ?? '',
                      actorImage:
                          seriesEntityDetails.actorDetails[index].profilePath ??
                              ''),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
