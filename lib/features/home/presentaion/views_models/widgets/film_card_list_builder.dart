import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_popular_movie_cubit/fetch_popular_movies_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/vertical_film_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmCardListView extends StatelessWidget {
  const FilmCardListView({
    super.key, required this.movieEntity,
  });
final List<MovieEntity>movieEntity;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 235,
            width: 400,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              itemCount: 9,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: VerticalFilmCard(
                    movieEntity:movieEntity[index],
                  ),
                );
              },
            ),
          );
  }
}
