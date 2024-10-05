import 'package:cinemax_app/core/utils/custom_vertical_divider.dart';
import 'package:cinemax_app/core/utils/movie_duration_time.dart';
import 'package:cinemax_app/core/utils/movie_gener.dart';
import 'package:cinemax_app/core/utils/movie_year_published.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:flutter/material.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    super.key,
    required this.movieDetailsEntity,
  });
  final MovieDetailsEntity movieDetailsEntity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MovieYearPublished(
            date: movieDetailsEntity.date,
          ),
          const CustomVerticalDivider(),
          MovieDurationTime(
            duration: movieDetailsEntity.duration,
          ),
          const CustomVerticalDivider(),
          MovieGener(
            geners: movieDetailsEntity.gener,
          ),
        ],
      ),
    );
  }
}
