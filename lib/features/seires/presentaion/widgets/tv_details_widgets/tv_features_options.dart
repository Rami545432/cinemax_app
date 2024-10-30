import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/circle_button.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_details_widgets/trailer_button.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity_details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class TvShowFeaturesOptions extends StatelessWidget {
  const TvShowFeaturesOptions({super.key, required this.seriesEntityDetails});
  final SeriesEntityDetails seriesEntityDetails;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TrailerButton(
          onTap: () {
            final Uri url = Uri.parse(
                'https://vidsrc.xyz/embed/tv/${seriesEntityDetails.tvId}/1/1');
            try {
              launchUrl(url);
            } catch (e) {
              const Text('Sorry the Movie Not work try Again later !');
            }
          },
        ),
        CircleButton(
          color: AppSecondryColors.orange,
          icon: Icons.movie,
          onPressed: () {
            GoRouter.of(context)
                .push(Approuter.kYoutubePlayer, extra: seriesEntityDetails);
          },
        ),
        CircleButton(
          onPressed: () async {
            await Share.share(
                'https://www.themoviedb.org/tv/${seriesEntityDetails.tvId}');
          },
          color: AppPrimaryColors.blueAccent,
          icon: FontAwesomeIcons.arrowUpRightFromSquare,
          size: 18,
        ),
      ],
    );
  }
}
