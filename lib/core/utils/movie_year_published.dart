import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';

class MovieYearPublished extends StatelessWidget {
  const MovieYearPublished({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IconTextRow(
      iconData: Icons.calendar_month,
      text: '2021',
    );
  }
}
