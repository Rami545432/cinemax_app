part of 'trending_movie_cubit.dart';

@immutable
abstract class TrendingMovieState {}

class TrendingMovieInitial extends TrendingMovieState {}

class TrendingMovieSuccess extends TrendingMovieState {
  final List<MovieEntity> movies;

  TrendingMovieSuccess({required this.movies});
}

class TrendingMovieFailure extends TrendingMovieState {
  final String errorMessage;

  TrendingMovieFailure({required this.errorMessage});
}
