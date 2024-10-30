import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';

import '../../../../home/domian/entites/entity.dart';

abstract class SearchResult {}

class MovieResult extends SearchResult {
  final MovieEntity movie;
  MovieResult(this.movie);
}

class TvShowResult extends SearchResult {
  final SeriesEntity tvShow;
  TvShowResult(this.tvShow);
}
