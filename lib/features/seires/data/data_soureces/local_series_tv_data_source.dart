import 'package:cinemax_app/constant.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/entites/series_entity.dart';

abstract class LocalSeriesTvDataSource {
  List<SeriesEntity> fetchPopularTvShows({int page = 10});
  List<SeriesEntity> fetchtTrendingTvShows({int page = 10});
  List<SeriesEntity> fetchTopRatedTvShows({int page = 10});
}

class LocalSeriesDataSourceImpl extends LocalSeriesTvDataSource {
  @override
  List<SeriesEntity> fetchPopularTvShows({int page = 10}) {
    var cachedPopTvShows = Hive.box<SeriesEntity>(popularTvBox);
    return cachedPopTvShows.values.toList();
  }

  @override
  List<SeriesEntity> fetchTopRatedTvShows({int page = 10}) {
    var cachedTopRatedTvShows = Hive.box<SeriesEntity>(topRatedBox);
    return cachedTopRatedTvShows.values.toList();
  }

  @override
  List<SeriesEntity> fetchtTrendingTvShows({int page = 10}) {
    var cachedTrendigTvShows = Hive.box<SeriesEntity>(trendingTvBox);
    return cachedTrendigTvShows.values.toList();
  }
}
