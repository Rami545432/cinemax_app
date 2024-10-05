import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/vertical_tv_show_card.dart';
import 'package:flutter/material.dart';

class TvSeriesCardListView extends StatelessWidget {
  const TvSeriesCardListView({
    super.key,
    required this.seriesEntity,
  });
  final List<SeriesEntity> seriesEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: VerticalTvShowCard(
              seriesEntity: seriesEntity[index],
            ),
          );
        },
      ),
    );
  }
}
