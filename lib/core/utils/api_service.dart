import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final apiKey = '23e981c4511a42f47649472bd8b1bd50';

  final baseUrlMoviePopular = 'https://api.themoviedb.org/3/discover/movie?';
  final baseUrlMovie = 'https://api.themoviedb.org/3/movie/';
  final baseSearchUrl = 'https://api.themoviedb.org/3/search/';
  final baseTrendingUrl = 'https://api.themoviedb.org/3/trending/movie/day';

  ApiService(this.dio);
  Future<Map<String, dynamic>> getGeneralMovies(dynamic generId,
      {int page = 10}) async {
    var response = await dio.get(
        '${baseUrlMoviePopular}api_key=$apiKey&with_genres=$generId&page=${(page / 10)}');
    log('${baseUrlMoviePopular}api_key=$apiKey&with_genres=$generId&page=${(page / 10)}');
    return response.data;
  }

  Future<Map<String, dynamic>> getMovie(dynamic endpoint) async {
    var response = await dio.get(
        '$baseUrlMovie$endpoint?api_key=$apiKey&language=en-US&append_to_response=credits,videos&page=1');
    return response.data;
  }

  Future<Map<String, dynamic>> searchMovie(String query) async {
    var response =
        await dio.get('${baseSearchUrl}movie?api_key=$apiKey&query=$query');
    return response.data;
  }

  Future<Map<String, dynamic>> getSearchActor(String query) async {
    var response =
        await dio.get('${baseSearchUrl}person?api_key=$apiKey&query=$query');
    return response.data;
  }

  Future<Map<String, dynamic>> getRecommendedMovies(
    int movieId,
  ) async {
    var response =
        await dio.get('$baseUrlMovie$movieId/recommendations?api_key=$apiKey');

    return response.data;
  }

  Future<Map<String, dynamic>> getTrendingMovies() async {
    var response = await dio.get('$baseTrendingUrl?api_key=$apiKey');
    return response.data;
  }
}
