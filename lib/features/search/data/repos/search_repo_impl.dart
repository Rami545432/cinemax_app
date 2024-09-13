import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/data/data_sources/local_search_data_source.dart';
import 'package:cinemax_app/features/search/data/data_sources/remote_search_data_source.dart';
import 'package:cinemax_app/features/search/domain/entities/search_entity.dart';
import 'package:cinemax_app/features/search/domain/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {
  final RemoteDataSource remoteDataSource;
  final LocalSearchDataSource localSearchDataSource;

  SearchRepoImpl(
      {required this.remoteDataSource, required this.localSearchDataSource});
  @override
  Future<Either<Failure, List<MovieEntity>>> searchMovies(String query) async {
    try {
      var suggestions = await remoteDataSource.searchMovies(query);
      return right(suggestions);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchRecommmendedMovies(
      int id) async {
    try {
      var cachedMovies = localSearchDataSource.recommendedMovies();
      if (cachedMovies.isNotEmpty) {
        return right(cachedMovies);
      }
      var results = await remoteDataSource.fetchRecommmendedMovies(id);
      return right(results);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
    
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> fetchTrendingMovies() async {
    try {
      var cachedMovies = localSearchDataSource.recommendedMovies();
      if (cachedMovies.isNotEmpty) {
        return right(cachedMovies);
      }
      var movies = await remoteDataSource.fetchTrendingMovies();
      return right(movies);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<ActorEntity>>> searchActor(String query) async {
    try {
      var suggestions = await remoteDataSource.searchActors(query);
      return right(suggestions);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
