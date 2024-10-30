part of 'fetch_series_season_details_cubit.dart';

@immutable
abstract class FetchSeriesSeasonDetailsState {}

class FetchSeriesSeasonDetailsInitial extends FetchSeriesSeasonDetailsState {}
class FetchSeriesSeasonDetailsSuccess extends FetchSeriesSeasonDetailsState {
  final List<SeriesSeasonDetailsEntitiy>seasons;

  FetchSeriesSeasonDetailsSuccess({required this.seasons});
}
class FetchSeriesSeasonDetailsFailure extends FetchSeriesSeasonDetailsState {
  final String errorMessage;

  FetchSeriesSeasonDetailsFailure({required this.errorMessage});
}
class FetchSeriesSeasonDetailsLoading extends FetchSeriesSeasonDetailsState {}

