import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class LocalSearchDataSource {
  List<MovieEntity> trendingMovies();
  List<MovieEntity> recommendedMovies();
}

class LocalSearchDataSourceImpl extends LocalSearchDataSource {
  @override
  List<MovieEntity> recommendedMovies() {
    var movies = Hive.box<MovieEntity>(recommendedBox);
    return movies.values.toList();
  }

  @override
  List<MovieEntity> trendingMovies() {
    var movies = Hive.box<MovieEntity>(trendBox);
    return movies.values.toList();
  }
}
