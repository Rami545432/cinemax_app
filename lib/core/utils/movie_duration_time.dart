import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';

class MovieDurationTime extends StatelessWidget {
  const MovieDurationTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IconTextRow(
      iconData: Icons.access_time_filled_sharp,
      text: '148 Minutes',
    );
  }
}
