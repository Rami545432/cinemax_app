part of 'fetch_top_rated_tv_shows_cubit.dart';

@immutable
abstract class FetchTopRatedTvShowsState {}

class FetchTopRatedTvShowsInitial extends FetchTopRatedTvShowsState {}

class FetchTopRatedTvShowsLoading extends FetchTopRatedTvShowsState {}

class FetchTopRatedTvShowsSuccess extends FetchTopRatedTvShowsState {
  final List<SeriesEntity> tvShows;

  FetchTopRatedTvShowsSuccess({required this.tvShows});
}

class FetchTopRatedTvShowsFailure extends FetchTopRatedTvShowsState {
  final String errorMessage;

  FetchTopRatedTvShowsFailure({required this.errorMessage});
}

class FetchTopRatedTvShowsLoadingPagination extends FetchTopRatedTvShowsState {}
