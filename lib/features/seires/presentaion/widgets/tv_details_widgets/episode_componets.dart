import 'package:cinemax_app/core/utils/details_widgets/episode_descreption.dart';
import 'package:flutter/material.dart';

import '../../../domain/entites/series_season_details_entitiy.dart';
import 'episode_info_column.dart';
import 'episode_stack_image.dart';

class EpisodeComponets extends StatelessWidget {
  const EpisodeComponets({
    super.key,
    required this.seasonDetailsEntitiy,
  });
  final SeriesSeasonDetailsEntitiy seasonDetailsEntitiy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 33),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              EpisodeStackImage(rating: seasonDetailsEntitiy.episodeRating,
                imageUrl: seasonDetailsEntitiy.episodeImage,
              ),
              SizedBox(
                width: 16,
              ),
              EpisodeInfoColumn(
                episodeDuration: seasonDetailsEntitiy.episodeRunTime,
                episodeName: seasonDetailsEntitiy.episodeName,
                episodeNumber: seasonDetailsEntitiy.episodeNum,
              ),
            ],
          ),
          SizedBox(
           
            width: 282,
            child: EpisodeDescrepttion(overview: seasonDetailsEntitiy.episodeOverView),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
