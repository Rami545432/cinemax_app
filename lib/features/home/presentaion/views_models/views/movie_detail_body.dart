import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/core/utils/rating.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/cast_container.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_descreption.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_info.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_options_button.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_detail_app_bar.dart';
import 'package:flutter/material.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            const SizedBox(
              height: 550,
              child: CustomScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  slivers: [
                    MovieDetailsAppbar(),
                  ]),
            ),
            Positioned(
              top: 108,
              right: 85,
              left: 85,
              child: CachedNetworkImage(
                height: 287,
                width: 205,
                imageUrl:
                    'https://image.tmdb.org/t/p/w500//m2zXTuNPkywdYLyWlVyJZW2QOJH.jpg',
              ),
            ),
            const Positioned(
              top: 411,
              left: 50,
              right: 50,
              child: Column(
                children: [
                  MovieInfo(),
                  SizedBox(
                    height: 8,
                  ),
                  Rating(),
                  SizedBox(
                    height: 24,
                  ),
                  FilmFeaturesOptions(),
                ],
              ),
            )
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        const MovieDescreption(),
        const SizedBox(
          height: 24,
        ),
        const CastContainer()
      ],
    );
  }
}
