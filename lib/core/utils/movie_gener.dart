import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';

class MovieGener extends StatelessWidget {
  const MovieGener({
    super.key,
    this.movieDetailsEntity,
  });
  final MovieDetailsEntity? movieDetailsEntity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconTextRow(
          iconData: Icons.theaters,
          text: getGenreName(movieDetailsEntity?.gener[0] ?? 27),
        ),
      ],
    );
  }
}
