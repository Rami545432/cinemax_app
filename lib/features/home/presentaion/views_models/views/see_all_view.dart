import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_film_card.dart';
import 'package:flutter/material.dart';

class SeeAllView extends StatelessWidget {
  const SeeAllView({super.key, required this.movieEntity});
  final List<MovieEntity> movieEntity;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SeeAllViewBody(
          movieEntity: movieEntity,
        ),
      ),
    );
  }
}

class SeeAllViewBody extends StatelessWidget {
  const SeeAllViewBody({super.key, required this.movieEntity});
  final List<MovieEntity> movieEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: MainAppBar(title: 'See All'),
          ),
          SliverList.builder(
            itemCount: movieEntity.length,
            itemBuilder: (context, index) {
              // BlocProvider.of
              return SeeAllFilmCard(
                movieEntity: movieEntity[index],
              );
            },
          )
        ],
      ),
    );
  }
}
