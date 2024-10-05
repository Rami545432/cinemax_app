part of 'search_tv_show_cubit.dart';

@immutable
abstract class SearchTvShowState {}

class SearchTvShowInitial extends SearchTvShowState {}

class SearchTvShowSuccess extends SearchTvShowState {
  final List<SeriesEntity> suggestions;

  SearchTvShowSuccess({required this.suggestions});
}

class SearchTvShowFailure extends SearchTvShowState {
  final String errorMessage;

  SearchTvShowFailure({required this.errorMessage});
}

class SearchTvShowLoading extends SearchTvShowState {}
