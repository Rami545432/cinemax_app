import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/tv_series_card_list_view.dart';
import 'package:flutter/material.dart';

class TvMostPopularCompontes extends StatelessWidget {
  const TvMostPopularCompontes({
    super.key,
    required this.tvShows,
  });
  final List<SeriesEntity> tvShows;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        TvSeriesCardListView(
          seriesEntity: tvShows,
        ),
      ],
    );
  }
}
