import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/most_popular_widgets/see_all_tv_pop_widgets/see_all_tv_show_card.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../core/utils/main_app_bar.dart';

class SeeAllTvCustomScrollView extends StatelessWidget {
  const SeeAllTvCustomScrollView({
    super.key,
    required ScrollController scrollController,
    required this.series,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;
  final List<SeriesEntity> series;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: MainAppBar(title: 'See All'),
          ),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 24,
        )),
        SliverList.builder(
          itemCount: series.length,
          itemBuilder: (context, index) {
            // BlocProvider.of
            return SeeAllTvShowCard(
              seriesEntity: series[index],
            );
          },
        )
      ],
    );
  }
}
