import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/api_service.dart';
import 'package:cinemax_app/core/utils/save_movies_data.dart';
import 'package:cinemax_app/features/home/data/models/movie_model.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/data/models/search_actor_model/search_actor_model.dart';
import 'package:cinemax_app/features/search/domain/entities/search_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class RemoteDataSource {
  Future<List<MovieEntity>> searchMovies(String query);
  Future<List<MovieEntity>> fetchTrendingMovies();
  Future<List<MovieEntity>> fetchRecommmendedMovies(int movieId);
  Future<List<ActorEntity>> searchActors(String query);
}

class RemoteSearchDataSourceImpl extends RemoteDataSource {
  final ApiService apiService;

  RemoteSearchDataSourceImpl({required this.apiService});
  @override
  Future<List<MovieEntity>> searchMovies(String query) async {
    List<MovieEntity> suggestions = [];
    var data = await apiService.searchMovie(query);
    for (var movie in data['results']) {
      suggestions.add(
        MovieModel.fromJson(movie),
      );
    }
    return suggestions;
  }

  @override
  Future<List<MovieEntity>> fetchRecommmendedMovies(int movieId) async {
    List<MovieEntity> movies = [];
    var data = await apiService.getRecommendedMovies(movieId);
    for (var movie in data['results']) {
      movies.add(
        MovieModel.fromJson(movie),
      );
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
      movies.add(
        MovieModel.fromJson(movie),
      );
      saveMoviesData(movies, trendBox);
     await Hive.box<MovieEntity>(trendBox).clear();
    }
    return movies;
  }

  @override
  Future<List<ActorEntity>> searchActors(String query) async {
    List<ActorEntity> movies = [];
    var data = await apiService.getSearchActor(query);
    for (var movie in data['results']) {
      movies.add(
        SearchActorModel.fromJson(movie),
      );
    }
    return movies;
  }
}
