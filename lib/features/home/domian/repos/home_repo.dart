import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:dartz/dartz.dart';

import '../entites/entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieEntity>>> fetchMostPopularMovies(
      dynamic generId,
      {int page = 10});
  Future<Either<Failure, List<MovieEntity>>> fetchNewsetMovies();
  Future<Either<Failure, List<MovieDetailsEntity>>> fetchMoviesDetails(
      int movieid);
}
