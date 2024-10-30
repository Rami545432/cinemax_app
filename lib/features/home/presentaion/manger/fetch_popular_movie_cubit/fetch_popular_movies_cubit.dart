import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/domian/uses_cases/fetch_most_popular.dart';
import 'package:meta/meta.dart';
part 'fetch_popular_movies_state.dart';

class FetchPopularMoviesCubit extends Cubit<FetchPopularMoviesState> {
  FetchPopularMoviesCubit(this.fetchMostPopularUseCase)
      : super(FetchPopularMoviesInitial());
  final FetchMostPopularUseCase fetchMostPopularUseCase;

  Future<void> fetchPopularMovie(dynamic generId, {int page = 10}) async {
    if (page == 10) {
      emit(
        FetchPopularMoviesLoading(),
      );
    } else {
      emit(FetchPopularMoviesPaginationLoading());
    }
    var result = await fetchMostPopularUseCase.call(generId, page);
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
