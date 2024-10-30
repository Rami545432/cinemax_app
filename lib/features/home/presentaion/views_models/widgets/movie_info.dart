import 'package:cinemax_app/core/utils/custom_vertical_divider.dart';
import 'package:cinemax_app/core/utils/duration_time.dart';
import 'package:cinemax_app/core/utils/gener.dart';
import 'package:cinemax_app/core/utils/year_published.dart';
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
          YearPublished(
            date: movieDetailsEntity.date,
          ),
          const CustomVerticalDivider(),
          DurationTime(
            duration: movieDetailsEntity.duration,
          ),
          const CustomVerticalDivider(),
          Gener(
            geners: movieDetailsEntity.gener,
          ),
        ],
      ),
    );
  }
}
