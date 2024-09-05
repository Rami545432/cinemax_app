import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/domain/entities/search_entity.dart';
import 'package:cinemax_app/features/search/domain/use_case/search_movie_use_case.dart';
import 'package:meta/meta.dart';

part 'search_movie_state.dart';

class SearchMovieCubit extends Cubit<SearchMovieState> {
  SearchMovieCubit(this.searchMovieUseCase,)
      : super(SearchMovieInitial());
  final SearchMovieUseCase searchMovieUseCase;


  Future<void> searchMovie(String query) async {
    var moiveResult = await searchMovieUseCase.call(query);
    moiveResult.fold((failure) {
      emit(
        SearchMovieFailure(errorMessage: failure.errorMessage),
      );
    }, (movies) {
      emit(
        SearchMovieSuccess(
          movies,
        ),
      );
    });
  }

  
}
