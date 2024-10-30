
import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/search/domain/use_case/search_movie_use_case.dart';
import 'package:cinemax_app/features/search/domain/use_case/search_tv_show_use_case.dart';
import 'package:meta/meta.dart';

import '../../../../data/models/search_actor_model/search_result.dart';
import 'dart:math' as math;

part 'search_movie_state.dart';

class SearchMovieCubit extends Cubit<SearchMovieState> {
  SearchMovieCubit(
    this.searchMovieUseCase,
    this.searchTvShowUseCase,
  ) : super(SearchMovieInitial());
  final SearchMovieUseCase searchMovieUseCase;
  final SearchTvShowUseCase searchTvShowUseCase;

  Future<void> searchMovie(String query) async {
    var movieResult = await searchMovieUseCase.call(query);
    var tvShowsResults = await searchTvShowUseCase.call(query);

    movieResult.fold(
      (failure) {
        emit(SearchMovieFailure(errorMessage: failure.errorMessage));
      },
      (movies) {
        tvShowsResults.fold(
          (failure) {
            emit(SearchMovieFailure(errorMessage: failure.errorMessage));
          },
          (tvshows) {
            final combinedResults = <SearchResult>[];
            final maxLength = math.max(movies.length, tvshows.length);

            for (int i = 0; i < maxLength; i++) {
              if (i < movies.length) {
                combinedResults.add(
                  MovieResult(movies[i]),
                );
              }
              if (i < tvshows.length) {
                combinedResults.add(
                  TvShowResult(tvshows[i]),
                );
              }
            }
            emit(
              SearchMovieSuccess(results: combinedResults),
            );
          },
        );
      },
    );
  }
}
