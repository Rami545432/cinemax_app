import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/domian/uses_cases/fetch_newst_movies.dart';
import 'package:meta/meta.dart';

part 'fetch_newset_movies_state.dart';

class FetchNewsetMoviesCubit extends Cubit<FetchNewsetMoviesState> {
  FetchNewsetMoviesCubit(this.fetchNewstMovieCase)
      : super(FetchNewsetMoviesInitial());
  final FetchNewstMovieCase fetchNewstMovieCase;
  Future<void> fetchNewsetMovies() async {
    emit(
      FetchNewsetMoviesLoading(),
    );
    var results = await fetchNewstMovieCase.call();
    results.fold((failure) {
     emit(FetchNewsetMoviesFailure(errorMessage: failure.errorMessage),);
    }, (movies) {
      emit(
        FetchNewsetMoviesSuccess(
          movies: movies,
        ),
      );
    });
  }
}
