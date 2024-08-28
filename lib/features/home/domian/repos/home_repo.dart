import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:dartz/dartz.dart';

import '../entites/entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieEntity>>> fetchMostPopularMovies();
  Future<Either<Failure, List<MovieEntity>>> fetchNewsetMovies();
}
