import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';

class MovieDurationTime extends StatelessWidget {
  const MovieDurationTime({
    super.key,
    this.movieDetailsEntity,
  });

  final MovieDetailsEntity? movieDetailsEntity;
  @override
  Widget build(BuildContext context) {
    return IconTextRow(
        iconData: Icons.access_time_filled_sharp,
        text: '${movieDetailsEntity?.duration.toString()??180} Minutes');
  }
}
