import 'dart:developer';

import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/api_service.dart';
import 'package:cinemax_app/core/utils/save_movies_data.dart';
import 'package:cinemax_app/features/home/data/models/movie_details_model/movie_details_model.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';

import '../../domian/entites/entity.dart';
import '../models/movie_model.dart';

abstract class RemoteHomeDataSource {
  Future<List<MovieEntity>> fetchMostPopularMovies(dynamic generId,
      {int page = 1});
  Future<List<MovieEntity>> fetchNewsetMovies();
  Future<List<MovieDetailsEntity>> fetchMovieDetails(int movieId);
}

class RemoteHomeDataSourceImpl extends RemoteHomeDataSource {
  final ApiService apiService;

  RemoteHomeDataSourceImpl({required this.apiService});
  @override
  Future<List<MovieEntity>> fetchMostPopularMovies(dynamic generId,
      {int page = 10}) async {
    List<MovieEntity> movies = [];
    log(page.toString());
    var data = await apiService.getGeneralMovies(generId, page: page);
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
    var data = await apiService.getMovieDetails('upcoming');
    for (var movie in data['results']) {
      if (movie['poster_path'] != null) {
        movies.add(MovieModel.fromJson(movie));
      }
    }
    saveMoviesData(movies, newsetBox);

    return movies;
  }

  @override
  Future<List<MovieDetailsEntity>> fetchMovieDetails(int movieId) async {
    List<MovieDetailsEntity> movies = [];

    var data = await apiService.getMovieDetails(movieId);
    movies.add(
      MovieDetailsModel.fromJson(data),
    );

    return movies;
  }
}
