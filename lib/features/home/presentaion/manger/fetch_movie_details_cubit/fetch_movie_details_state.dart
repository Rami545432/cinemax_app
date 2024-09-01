part of 'fetch_movie_details_cubit.dart';

@immutable
abstract class FetchMovieDetailsState {}

class FetchMovieDetailsInitial extends FetchMovieDetailsState {}

class FetchMovieDetailsSuccess extends FetchMovieDetailsState {
  final List<MovieDetailsEntity> movies;
  

  FetchMovieDetailsSuccess({required this.movies});
}

class FetchMovieDetailsFauilure extends FetchMovieDetailsState {
  final String errorMessage;

  FetchMovieDetailsFauilure({required this.errorMessage});
}
