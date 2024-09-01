import 'package:cinemax_app/constant.dart';
import 'package:hive_flutter/adapters.dart';

import '../../domian/entites/entity.dart';

abstract class LocalHomeDataSource {
  List<MovieEntity> fetchMostPopularMovies();
  List<MovieEntity> fetchNewsetMovies();
  // List<MovieDetailsEntity> fetchMovieDetails();
}

class LocalHomeDataSourceImpl extends LocalHomeDataSource {
  @override
  List<MovieEntity> fetchMostPopularMovies() {
    var cachedPopMovies = Hive.box<MovieEntity>(popularBox);
    cachedPopMovies.clear();

    return cachedPopMovies.values.toList();
  }

  @override
  List<MovieEntity> fetchNewsetMovies() {
    var cachedNewsetMovies = Hive.box<MovieEntity>(newsetBox);
    return cachedNewsetMovies.values.toList();
  }

  // @override
  // List<MovieDetailsEntity> fetchMovieDetails() {
  //   var cachedNewsetMovies = Hive.box<MovieDetailsEntity>(movieDetailtBox);
  //   return cachedNewsetMovies.values.toList();
  // }
}
