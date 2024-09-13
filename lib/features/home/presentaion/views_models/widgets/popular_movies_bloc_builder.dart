import 'package:cinemax_app/features/home/presentaion/manger/fetch_popular_movie_cubit/fetch_popular_movies_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/film_card_loading_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'most_popular_componets.dart';

class PopularMoivesBlocBuilder extends StatelessWidget {
  const PopularMoivesBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchPopularMoviesCubit, FetchPopularMoviesState>(
      builder: (context, state) {
        if (state is FetchPopularMovieSuccess) {
          return MostPopularComponets(
            movies: state.movies,
          );
        }
        return const FilmCardListViewLoading();
      },
    );
  }
}
