import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/cast_container.dart';
import 'package:cinemax_app/core/utils/details_widgets/custom_descreption.dart';
import 'package:cinemax_app/core/utils/details_widgets/details_view_app_bar_comp.dart';
import 'package:cinemax_app/core/utils/details_widgets/details_view_image.dart';
import 'package:flutter/material.dart';

import 'movie_data_and_sharing.dart';

class MovieDetailsListViewCompontes extends StatelessWidget {
  const MovieDetailsListViewCompontes({
    super.key,
    required this.movieDetailsEntity,
  });
  final MovieDetailsEntity movieDetailsEntity;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            DetalisViewAppBarCompoentes(
              gener: movieDetailsEntity.gener[0].toString(),
              movieId: movieDetailsEntity.movieId,
              type: 'movie',
              title: movieDetailsEntity.moviTtitle,
              imageurl: movieDetailsEntity.image,
            ),
            DetailsViewImage(
              imageUrl: movieDetailsEntity.image,
            ),
            MovieDataAndSharing(movieDetailsEntity: movieDetailsEntity),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        CustomDescreption(
          overview: movieDetailsEntity.storyLine,
        ),
        const SizedBox(
          height: 24,
        ),
        CastContainer(
          movieDetailsEntity: movieDetailsEntity,
        )
      ],
    );
  }
}
