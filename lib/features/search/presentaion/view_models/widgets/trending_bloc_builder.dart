import 'package:cinemax_app/features/search/presentaion/view_models/manger/recommended_movies_cubit/recommended_movies_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/manger/trending_movie_cubit/trending_movie_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/film_search_result_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendingBlocBuilder extends StatelessWidget {
  const TrendingBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrendingMovieCubit, TrendingMovieState>(
      builder: (context, state) {
        if (state is TrendingMovieSuccess) {
          BlocProvider.of<RecommendedMoviesCubit>(context)
              .fetchRecommmendedMovies(state.movies[0].movieId);

          return FilmSearchResultCard(
            movieEntity: state.movies[0],
          );
        }
        if (state is TrendingMovieFailure) {
          return Text(state.errorMessage);
        }
        return Container();
      },
    );
  }
}
