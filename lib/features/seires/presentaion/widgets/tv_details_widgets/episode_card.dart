
import 'package:cinemax_app/features/seires/domain/entites/series_season_details_entitiy.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/app_colors.dart';

import 'episode_componets.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({
    super.key,
    required this.seasonDetailsEntitiy,
  });
  final SeriesSeasonDetailsEntitiy seasonDetailsEntitiy;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var id = seasonDetailsEntitiy.tvId;
        var seasonNum = seasonDetailsEntitiy.seasonNum;
        var episodeNumber = seasonDetailsEntitiy.episodeNum;

        final Uri url = Uri.parse(
            'https://vidsrc.xyz/embed/tv/$id/$seasonNum/$episodeNumber');
        try {
          launchUrl(url);
        } catch (e) {
          const Text('Sorry the Movie Not work try Again later !');
        }
      },
      child: Container(
        height: null,
        width: 327,
        decoration: BoxDecoration(
          color: AppPrimaryColors.soft,
          borderRadius: BorderRadius.circular(16),
        ),
        child: EpisodeComponets(
          seasonDetailsEntitiy: seasonDetailsEntitiy,
        ),
      ),
    );
  }
}
