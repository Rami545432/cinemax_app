import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/vertical_film_card.dart';
import 'package:flutter/material.dart';

class FilmCardListView extends StatelessWidget {
  const FilmCardListView({
    super.key,
    required this.movieEntity,
  });
  final List<MovieEntity> movieEntity;

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
            child: VerticalFilmCard(
              movieEntity: movieEntity[index],
            ),
          );
        },
      ),
    );
  }
}
