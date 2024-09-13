import 'package:flutter/material.dart';

import '../../../../../../core/utils/main_app_bar.dart';
import '../../../../domian/entites/entity.dart';
import 'see_all_film_card.dart';

class SeeAllCustomScrollView extends StatelessWidget {
  const SeeAllCustomScrollView({
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
