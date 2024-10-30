
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/film_card_loading_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../manger/recommended_movies_cubit/recommended_movies_cubit.dart';
import 'recommended_for_you_items.dart';

class RecomendedForYouBlocBuilder extends StatelessWidget {
  const RecomendedForYouBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecommendedMoviesCubit, RecommendedMoviesState>(listener: (context, state) {
      if(state is RecommendedMoviesSuccess){
       if(state.movies.isEmpty){
        BlocProvider.of<RecommendedMoviesCubit>(context).fetchRecommmendedMovies(519182);
       }
      
      }
    },
      builder: (context, state) {
        if (state is RecommendedMoviesSuccess) {
          return RecommendedForYouItems(
            movieEntity: state.movies,
          );
        }
        if (state is RecommendedMoviesFailure) {
          return Text(state.errorMessage);
        }
        return const FilmCardListViewLoading();
      },
    );
  }
}
