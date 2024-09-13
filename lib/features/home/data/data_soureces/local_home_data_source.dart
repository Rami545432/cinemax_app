import 'package:cinemax_app/constant.dart';
import 'package:hive_flutter/adapters.dart';

import '../../domian/entites/entity.dart';

abstract class LocalHomeDataSource {
  List<MovieEntity> fetchMostPopularMovies({int page = 10});
  List<MovieEntity> fetchNewsetMovies();
  // List<MovieDetailsEntity> fetchMovieDetails();
}

class LocalHomeDataSourceImpl extends LocalHomeDataSource {
  @override
  List<MovieEntity> fetchMostPopularMovies({int page = 10}) {
    int startIndex = (page - 1) * 20;
    int endIndex = startIndex + 20;
    var cachedPopMovies = Hive.box<MovieEntity>(popularBox);

    var length = cachedPopMovies.values.length;
    if (startIndex >= length) {
      
      return [];
    }

    
    endIndex = endIndex > length ? length : endIndex;

    return cachedPopMovies.values.toList().sublist(startIndex, endIndex);
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
