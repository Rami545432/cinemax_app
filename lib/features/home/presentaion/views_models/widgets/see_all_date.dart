import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';

class SeeAllYearPublished extends StatelessWidget {
  const SeeAllYearPublished({
    super.key,
    this.movieEntity,
  });
  final MovieEntity? movieEntity;
  @override
  Widget build(BuildContext context) {
    return IconTextRow(
      iconData: Icons.calendar_month,
      text: movieEntity?.date.toString() ?? '2020',
    );
  }
}
