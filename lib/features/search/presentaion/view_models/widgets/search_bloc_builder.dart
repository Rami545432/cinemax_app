import 'package:cinemax_app/features/home/presentaion/views_models/widgets/see_all_widgets/see_all_film_card.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/manger/search_movie_cubit/search_movie_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_default_componets.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_no_content.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/most_popular_widgets/see_all_tv_pop_widgets/see_all_tv_show_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/search_actor_model/search_result.dart';

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
          if (state.results.isEmpty) {
            return const SearchListNoContent();
          }

          return SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: state.results.map((result) {
                if (result is MovieResult) {
                  return SeeAllFilmCard(movieEntity: result.movie);
                } else if (result is TvShowResult) {
                  return SeeAllTvShowCard(seriesEntity: result.tvShow);
                }
                return Container();
              }).toList(),
            ),
          );
        }
        return const SearchDefaultComponets();
      },
    );
  }
}
