import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final apiKey = '23e981c4511a42f47649472bd8b1bd50';

  final baseUrlMoviePopular = 'https://api.themoviedb.org/3/discover/movie?';
  final baseUrlMovie = 'https://api.themoviedb.org/3/movie/';
  ApiService(this.dio);
  Future<Map<String, dynamic>> getGeneralMovies(dynamic generId) async {
    var response = await dio.get(
        '${baseUrlMoviePopular}api_key=$apiKey&with_genres=$generId');
    return response.data;
  }

  Future<Map<String, dynamic>> getMovie(dynamic endpoint) async {
    var response = await dio
        .get('$baseUrlMovie$endpoint?api_key=$apiKey&language=en-US&append_to_response=credits,videos');
    return response.data;
  }
}
