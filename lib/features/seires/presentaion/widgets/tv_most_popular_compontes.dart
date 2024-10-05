import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/tv_series_card_list_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/go_router.dart';
import '../../../../../core/utils/sub_bar.dart';

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
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SubBar(
              onPressed: () async {
             
                // ignore: use_build_context_synchronously
                GoRouter.of(context).push(
                  Approuter.kTvSeeAllPopularView,
                );
              },
              title: 'Most popular',
              textbutton: 'See All',
              
            )),
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
