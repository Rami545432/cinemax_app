import 'package:cinemax_app/features/seires/presentaion/views/series_view_body.dart';
import 'package:flutter/material.dart';


class SeriesView extends StatelessWidget {
  const SeriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SeriesViewBody(),
      ),
    );
  }
}
