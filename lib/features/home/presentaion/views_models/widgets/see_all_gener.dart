import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';

class SeeAllMovieGener extends StatelessWidget {
  const SeeAllMovieGener({
    super.key,
    this.movieEntity,
  });
  final MovieEntity? movieEntity;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        IconTextRow(
          iconData: Icons.theaters,
          text:getGenreName(movieEntity?.gener[0]??27),
        ),
      ],
    );
  }
}
