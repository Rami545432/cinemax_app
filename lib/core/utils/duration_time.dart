import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';

class DurationTime extends StatelessWidget {
  const DurationTime({
    super.key,
    required this.duration,
  });

  final int duration;
  @override
  Widget build(BuildContext context) {
    return IconTextRow(
        iconData: Icons.access_time_filled_sharp,
        text: '${duration.toString()} Miniutes');
  }
}
