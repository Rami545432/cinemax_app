part of 'fetch_tv_show_details_cubit.dart';

@immutable
abstract class FetchTvShowDetailsState {}

class FetchTvShowDetailsInitial extends FetchTvShowDetailsState {}

class FetchTvShowDetailsSuccess extends FetchTvShowDetailsState {
  final List<SeriesEntityDetails> tvShow;

  FetchTvShowDetailsSuccess({required this.tvShow});
}

class FetchTvShowDetailsFailure extends FetchTvShowDetailsState {
  final String errorMessage;

  FetchTvShowDetailsFailure({required this.errorMessage});
}

class FetchTvShowDetailsLoading extends FetchTvShowDetailsState {}
