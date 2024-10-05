import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';

class MovieGener extends StatelessWidget {
  const MovieGener({
    super.key,
    required this.geners,
  });
  final List<int>?geners;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconTextRow(
          iconData: Icons.theaters,
          text: getGenreName(geners?.isNotEmpty==true?geners![0]:18),
        ),
      ],
    );
  }
}
