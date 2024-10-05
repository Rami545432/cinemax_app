// ignore: unused_import
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/recommended_vertical_film_card.dart';
import 'package:flutter/material.dart';

class SearchCardListView extends StatelessWidget {
  const SearchCardListView({
    super.key,
    required this.movies,
  });
  final List<MovieEntity> movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: 400,
      child: ListView.builder(
        itemCount: movies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: RecommendedVerticalFilmCard(movieEntity: movies[index]),
          );
        },
      ),
    );
  }
}
