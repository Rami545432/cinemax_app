import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';

class MovieYearPublished extends StatelessWidget {
  const MovieYearPublished({
    super.key,
    this.movieDetailsEntity,
  });
  final MovieDetailsEntity? movieDetailsEntity;
  @override
  Widget build(BuildContext context) {
    return  IconTextRow(
      iconData: Icons.calendar_month,
      text: movieDetailsEntity?.date.toString()??'2020',
    );
  }
}
