import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/domain/use_case/fetch_recommended_movies.dart';
import 'package:meta/meta.dart';

part 'recommended_movies_state.dart';

class RecommendedMoviesCubit extends Cubit<RecommendedMoviesState> {
  RecommendedMoviesCubit(this.fetchRecommendedMoviesUseCase)
      : super(RecommendedMoviesInitial());
      
  final FetchRecommendedMoviesUseCase fetchRecommendedMoviesUseCase;
  Future<void> fetchRecommmendedMovies(int moiveId) async {
    var results = await fetchRecommendedMoviesUseCase.call(moiveId);
    results.fold((failure) {
      emit(
        RecommendedMoviesFailure(errorMessage: failure.errorMessage),
      );
    }, (movies) {
      emit(
        RecommendedMoviesSuccess(
          movies: movies,
        ),
      );
    });
  }
}
