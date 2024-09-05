import 'package:cinemax_app/features/home/presentaion/views_models/widgets/film_cast_info.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_film_card.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/manger/search_movie_cubit/search_movie_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_default_componets.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_no_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBlocBuilder extends StatelessWidget {
  const SearchBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchMovieCubit, SearchMovieState>(
      builder: (context, state) {
        if (state is SearchMovieFailure) {
          return Text(state.errorMessage);
        }
        if (state is SearchMovieSuccess) {
          if (state.suggestions.isEmpty) {
            return const SearchListNoContent();
          }

          return SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                ...state.suggestions.map((movie) {
                  return SeeAllFilmCard(movieEntity: movie);
                }),
              ],
            ),
          );
        } else if (state is SearchActorSuccess) {
          if (state.suggestions.isEmpty) {
            return const SearchListNoContent();
          }
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...state.suggestions.map((movie) {
                  return SizedBox(
                      height: 50,
                      child: FilmCastInfo(
                          actorName: movie.actorName,
                          actorImage: movie.actorImage));
                })
              ],
            ),
          );
        }
        return const SearchDefaultComponets();
      },
    );
  }
}
