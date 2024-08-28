import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/domian/uses_cases/fetch_most_popular.dart';
import 'package:meta/meta.dart';
part 'fetch_popular_movies_state.dart';

class FetchPopularMoviesCubit extends Cubit<FetchPopularMoviesState> {
  FetchPopularMoviesCubit(this.fetchMostPopularUseCase)
      : super(FetchPopularMoviesInitial());
  final FetchMostPopularUseCase fetchMostPopularUseCase;
  Future<void> fetchPopularMovie() async {
    emit(
      FetchPopularMoviesLoading(),
    );
    var result = await fetchMostPopularUseCase.call();
    result.fold((failure) {
      emit(
        FetchPopularMoviesFailure(errorMessage: failure.errorMessage),
      );
    }, (movies) {
      emit(
        FetchPopularMovieSuccess(
          movies: movies,
        ),
      );
    });
  }
}
