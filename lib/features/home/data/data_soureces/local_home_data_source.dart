import 'package:cinemax_app/constant.dart';
import 'package:hive_flutter/adapters.dart';

import '../../domian/entites/entity.dart';

abstract class LocalHomeDataSource {
  List<MovieEntity> fetchMostPopularMovies();
  List<MovieEntity> fetchNewsetMovies();
}

class LocalHomeDataSourceImpl extends LocalHomeDataSource {
  @override
  List<MovieEntity> fetchMostPopularMovies() {
    var cachedPopMovies = Hive.box<MovieEntity>(popularBox);
    return cachedPopMovies.values.toList();
  }

  @override
  List<MovieEntity> fetchNewsetMovies() {
    var cachedNewsetMovies = Hive.box<MovieEntity>(newsetBox);
    return cachedNewsetMovies.values.toList();
  }
}
