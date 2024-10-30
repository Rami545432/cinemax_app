part of 'search_movie_cubit.dart';

@immutable
abstract class SearchMovieState {}

class SearchMovieInitial extends SearchMovieState {}

class SearchMovieSuccess extends SearchMovieState {
  final List<SearchResult> results;
  SearchMovieSuccess({required this.results});
}

class SearchMovieFailure extends SearchMovieState {
  final String errorMessage;

  SearchMovieFailure({required this.errorMessage});
}
