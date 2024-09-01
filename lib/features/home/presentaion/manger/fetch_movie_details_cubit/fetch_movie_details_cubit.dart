import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/home/domian/uses_cases/fetch_movie_details.dart';
import 'package:meta/meta.dart';

part 'fetch_movie_details_state.dart';

class FetchMovieDetailsCubit extends Cubit<FetchMovieDetailsState> {
  FetchMovieDetailsCubit(this.fetchMovieDetailsUseCase)
      : super(FetchMovieDetailsInitial());
  final FetchMovieDetailsUseCase fetchMovieDetailsUseCase;
  List<MovieDetailsEntity>? movies;
  Future<void> fetchMovieDetails(int movieId) async {
    var results = await fetchMovieDetailsUseCase.call(movieId);
    results.fold((failure) {
      emit(
        FetchMovieDetailsFauilure(errorMessage: failure.errorMessage),
      );
    }, (movies) {
      emit(
        FetchMovieDetailsSuccess(
          movies: movies,
        ),
      );
    });
  }
}
