import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_widgets/see_all_film_card.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/main_app_bar.dart';


class RecommendedSeeAllCustomScrollView extends StatelessWidget {
  const RecommendedSeeAllCustomScrollView({
    super.key,
    required ScrollController scrollController,
    required this.movies,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;
  final List<MovieEntity> movies;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        const SliverToBoxAdapter(
          child: MainAppBar(title: 'See All'),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 24,
        )),
        SliverList.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            // BlocProvider.of
            return SeeAllFilmCard(
              movieEntity: movies[index],
            );
          },
        )
      ],
    );
  }
}
