import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/cast_container.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_descreption.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_details_widgets/movie_details_app_bar_comp.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_details_widgets/movie_details_image.dart';
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
            MovieDetaisAppBarComp(movieDetailsEntity: movieDetailsEntity),
            MoiveDetailsImage(movieDetailsEntity: movieDetailsEntity),
            MovieDataAndSharing(movieDetailsEntity: movieDetailsEntity),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        MovieDescreption(
          movieDetailsEntity: movieDetailsEntity,
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
