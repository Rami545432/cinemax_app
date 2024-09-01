import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/circle_button.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/trailer_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

class FilmFeaturesOptions extends StatelessWidget {
  const FilmFeaturesOptions({super.key, required this.movieDetailsEntity});
final MovieDetailsEntity movieDetailsEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         TrailerButton(
          onTap: () {
            GoRouter.of(context).push(Approuter.kYoutubePlayer,extra: movieDetailsEntity);
          },
        ),
        CircleButton(
          color: AppSecondryColors.orange,
          icon: Icons.file_download_outlined,
        ),
        CircleButton(
          onPressed: () async {
            await Share.share('https://www.themoviedb.org/movie/${movieDetailsEntity.movieId}');
          },
          color: AppPrimaryColors.blueAccent,
          icon: FontAwesomeIcons.arrowUpRightFromSquare,
          size: 18,
        ),
      ],
    );
  }
}

