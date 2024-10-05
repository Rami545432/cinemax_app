import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/api_service.dart';
import 'package:cinemax_app/core/utils/save_movies_data.dart';
import 'package:cinemax_app/features/home/data/models/movie_model.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/data/models/search_actor_model/search_actor_model.dart';
import 'package:cinemax_app/features/search/domain/entities/search_actor_entity.dart';
import 'package:cinemax_app/features/seires/data/models/series_model.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class RemoteSearchDataSource {
  Future<List<MovieEntity>> searchMovies(String query);
  Future<List<MovieEntity>> fetchTrendingMovies();
  Future<List<MovieEntity>> fetchRecommmendedMovies(
    int movieId,
  );
  Future<List<SearchActorEntity>> searchActors(String query);
  Future<List<SeriesEntity>> searchTvShows(String query);
}

class RemoteSearchDataSourceImpl extends RemoteSearchDataSource {
  final ApiService apiService;

  RemoteSearchDataSourceImpl({required this.apiService});
  @override
  Future<List<MovieEntity>> searchMovies(String query) async {
    List<MovieEntity> suggestions = [];
    var data = await apiService.searchMovie(query);
    for (var movie in data['results']) {
      if (movie['poster_path'] != null) {
        suggestions.add(MovieModel.fromJson(movie));
      }
    }
    return suggestions;
  }

  @override
  Future<List<MovieEntity>> fetchRecommmendedMovies(
    int movieId,
  ) async {
    List<MovieEntity> movies = [];
    var data = await apiService.getRecommendedMovies(movieId);
    for (var movie in data['results']) {
      if (movie['poster_path'] != null) {
        movies.add(
          MovieModel.fromJson(movie),
        );
      }
      saveMoviesData(movies, recommendedBox);
      await Hive.box<MovieEntity>(recommendedBox).clear();
    }
    return movies;
  }

  @override
  Future<List<MovieEntity>> fetchTrendingMovies() async {
    List<MovieEntity> movies = [];
    var data = await apiService.getTrendingMovies();
    for (var movie in data['results']) {
      if (movie['poster_path'] != null) {
        movies.add(
          MovieModel.fromJson(movie),
        );
      }
      saveMoviesData(movies, trendBox);
      await Hive.box<MovieEntity>(trendBox).clear();
    }
    return movies;
  }

  @override
  Future<List<SearchActorEntity>> searchActors(String query) async {
    List<SearchActorEntity> movies = [];
    var data = await apiService.getSearchActor(query);
    for (var movie in data['results']) {
      if (movie['profile_path'] != null) {
        movies.add(
          SearchActorModel.fromJson(movie),
        );
      }
    }
    return movies;
  }

  @override
  Future<List<SeriesEntity>> searchTvShows(String query) async {
    List<SeriesEntity> suggestions = [];
    var data = await apiService.searchMovie(type: 'tv', query);
    for (var suggestion in data['results']) {
      if (suggestion['profile_path'] != null) {
        suggestions.add(
          SeriesModel.fromJson(suggestion),
        );
      }
    }
    return suggestions;
  }
}
