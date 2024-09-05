part of 'recommended_movies_cubit.dart';

@immutable
abstract class RecommendedMoviesState {}

class RecommendedMoviesInitial extends RecommendedMoviesState {}

class RecommendedMoviesSuccess extends RecommendedMoviesState {
  final List<MovieEntity> movies;

  RecommendedMoviesSuccess({required this.movies});
}

class RecommendedMoviesFailure extends RecommendedMoviesState {
  final String errorMessage;

  RecommendedMoviesFailure({required this.errorMessage});
}
