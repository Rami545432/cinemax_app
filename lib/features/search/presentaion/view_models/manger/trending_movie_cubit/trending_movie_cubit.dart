import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/domain/use_case/fetch_trending_movies_use_case.dart';
import 'package:meta/meta.dart';

part 'trending_movie_state.dart';

class TrendingMovieCubit extends Cubit<TrendingMovieState> {
  TrendingMovieCubit(this.fetchTrendingMoviesUseCase)
      : super(TrendingMovieInitial());

  final FetchTrendingMoviesUseCase fetchTrendingMoviesUseCase;
  Future<void> fetchTrendingMovies() async {
    var results = await fetchTrendingMoviesUseCase.call();
    results.fold((failure) {
      emit(
        TrendingMovieFailure(errorMessage: failure.errorMessage),
      );
    }, (movies) {
      emit(
        TrendingMovieSuccess(
          movies: movies,
        ),
      );
    });
  }
}
