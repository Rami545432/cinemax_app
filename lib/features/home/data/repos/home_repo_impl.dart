import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/features/home/data/data_soureces/local_home_data_source.dart';
import 'package:cinemax_app/features/home/data/data_soureces/remote_home_data_source.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/home/domian/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final RemoteHomeDataSource remoteHomeDataSource;
  final LocalHomeDataSource localHomeDataSource;

  HomeRepoImpl(
      {required this.remoteHomeDataSource, required this.localHomeDataSource});
  @override
  Future<Either<Failure, List<MovieEntity>>> fetchMostPopularMovies(
      dynamic generId,{int page=10}) async {
    try {
      var cachedMovies = localHomeDataSource.fetchMostPopularMovies(page: page);
      if (cachedMovies.isNotEmpty) {
        return right(cachedMovies);
      }
      var movies = await remoteHomeDataSource.fetchMostPopularMovies(generId,page: page);
      return right(movies);
    } catch (e) {
      if (e is DioException) {
        ServerFailure.fromDioError(e);
      }
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchNewsetMovies() async {
    try {
      var cachedMovies = localHomeDataSource.fetchNewsetMovies();
      if (cachedMovies.isNotEmpty) {
        return right(cachedMovies);
      }
      var movie = await remoteHomeDataSource.fetchNewsetMovies();
      return right(movie);
    } catch (e) {
      if (e is DioException) {
        ServerFailure.fromDioError(e);
      }
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<MovieDetailsEntity>>> fetchMoviesDetails(
      int movieid) async {
    try {
      var movies = await remoteHomeDataSource.fetchMovieDetails(movieid);
      return right(movies);
    } catch (e) {
      if (e is DioException) {
        ServerFailure.fromDioError(e);
      }
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
