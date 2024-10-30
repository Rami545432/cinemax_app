import 'dart:developer';

import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final apiKey = '23e981c4511a42f47649472bd8b1bd50';

  final baseUrlMovie = 'https://api.themoviedb.org/3';

  ApiService(this.dio);
  Future<Map<String, dynamic>> getGeneralMovies(dynamic generId,
      {int page = 10, String type = 'movie'}) async {
    var response = await dio.get(
        '$baseUrlMovie/discover/$type?api_key=$apiKey&with_genres=$generId&page=${(page / 10)}');
    log('$baseUrlMovie/discover/$type?api_key=$apiKey&with_genres=$generId&page=${(page / 10)}');
    return response.data;
  }

  Future<Map<String, dynamic>> getMovieDetails(dynamic endpoint,
      {String type = 'movie'}) async {
    var response = await dio.get(
        '$baseUrlMovie/$type/$endpoint?api_key=$apiKey&language=en-US&append_to_response=credits,videos&page=1');
    log('$baseUrlMovie/$type/$endpoint?api_key=$apiKey&language=en-US&append_to_response=credits,videos&page=1');

    return response.data;
  }

  Future<Map<String, dynamic>> searchMovie(String query,
      {String type = 'movie'}) async {
    var response = await dio
        .get('$baseUrlMovie/search/$type?api_key=$apiKey&query=$query');
    log('$baseUrlMovie/search/$type?api_key=$apiKey&query=$query');
    return response.data;
  }

  Future<Map<String, dynamic>> getSearchActor(String query) async {
    var response = await dio
        .get('$baseUrlMovie/search/person?api_key=$apiKey&query=$query');
    return response.data;
  }

  Future<Map<String, dynamic>> getRecommendedMovies(int movieId,
      {String type = 'movie'}) async {
    var response = await dio
        .get('$baseUrlMovie/$type/$movieId/recommendations?api_key=$apiKey');

    return response.data;
  }

  Future<Map<String, dynamic>> getTrendingMovies(
      {String type = 'movie', int page = 10}) async {
    var response =
        await dio.get('$baseUrlMovie/trending/$type/week?api_key=$apiKey');
    return response.data;
  }

  Future<Map<String, dynamic>> getTopRated(
      {String type = 'movie', int page = 1}) async {
    var response = await dio
        .get('$baseUrlMovie/$type/top_rated?api_key=$apiKey&page=$page');
    log('$baseUrlMovie/$type/top_rated?api_key=$apiKey&page=$page');
    return response.data;
  }

  Future<Map<String, dynamic>> getGeneralTv(dynamic generId,
      {int page = 1, String type = 'movie'}) async {
    var response = await dio.get(
        '$baseUrlMovie/discover/$type?api_key=$apiKey&with_genres=$generId&page=${(page / 1)}');
    log('$baseUrlMovie/discover/$type?api_key=$apiKey&with_genres=$generId&page=${(page / 1)}');
    // log(response.data['results'].toString());
    return response.data;
  }

  Future<Map<String, dynamic>> getSeasonDetails(
      {required int tvid, required int season}) async {
    var response =
        await dio.get('$baseUrlMovie/tv/$tvid/season/$season?api_key=$apiKey');
    log('$baseUrlMovie/tv/$tvid/season/$season?api_key=$apiKey');
    return response.data;
  }
}
