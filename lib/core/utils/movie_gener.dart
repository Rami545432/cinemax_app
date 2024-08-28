import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';

class MovieGener extends StatelessWidget {
  const MovieGener({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        IconTextRow(
          iconData: Icons.theaters,
          text: 'Action',
        ),
      ],
    );
  }
}
