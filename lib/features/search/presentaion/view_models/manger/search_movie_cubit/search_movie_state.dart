part of 'search_movie_cubit.dart';

@immutable
abstract class SearchMovieState {}

class SearchMovieInitial extends SearchMovieState {}

class SearchMovieSuccess extends SearchMovieState {
  final List<MovieEntity> suggestions;

  SearchMovieSuccess(
    this.suggestions,
  );
}

class SearchActorSuccess extends SearchMovieState {
  final List<SearchActorEntity> suggestions;

  SearchActorSuccess(
    this.suggestions,
  );
}

class SearchMovieFailure extends SearchMovieState {
  final String errorMessage;

  SearchMovieFailure({required this.errorMessage});
}
