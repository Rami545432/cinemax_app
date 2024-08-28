import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/api_service.dart';
import 'package:cinemax_app/core/utils/save_movies_data.dart';

import '../../domian/entites/entity.dart';
import '../models/movie_model.dart';

abstract class RemoteHomeDataSource {
  Future<List<MovieEntity>> fetchMostPopularMovies();
  Future<List<MovieEntity>> fetchNewsetMovies();
}

class RemoteHomeDataSourceImpl extends RemoteHomeDataSource {
  final ApiService apiService;

  RemoteHomeDataSourceImpl({required this.apiService});
  @override
  Future<List<MovieEntity>> fetchMostPopularMovies() async {
    List<MovieEntity> movies = [];
    var data = await apiService.getGeneralMovies();
    for (var movie in data['results']) {
      movies.add(
        MovieModel.fromJson(movie),
      );
      saveMoviesData(movies, popularBox);
    }
    return movies;
  }

  @override
  Future<List<MovieEntity>> fetchNewsetMovies() async {
    List<MovieEntity> movies = [];
    var data = await apiService.getMovie('upcoming');
    for (var movie in data['results']) {
      movies.add(
        MovieModel.fromJson(movie),
      );
    }
    saveMoviesData(movies, newsetBox);

    return movies;
  }
}
