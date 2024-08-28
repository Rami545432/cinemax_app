import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final apiKey = '23e981c4511a42f47649472bd8b1bd50';

  final baseUrlMoviePopular = 'https://api.themoviedb.org/3/discover/movie?';
  final baseUrlMovie = 'https://api.themoviedb.org/3/movie/';
  ApiService(this.dio);
  Future<Map<String, dynamic>> getGeneralMovies() async {
    var response = await dio.get('https://api.themoviedb.org/3/discover/movie?api_key=23e981c4511a42f47649472bd8b1bd50');
    return response.data;
  }
  Future<Map<String, dynamic>> getMovie(String endpoint) async {
    var response = await dio.get('$baseUrlMovie$endpoint?api_key=$apiKey');
    return response.data;
  }
}
