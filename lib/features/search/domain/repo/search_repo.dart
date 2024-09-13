import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/domain/entities/search_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<MovieEntity>>> searchMovies(String query);
  Future<Either<Failure, List<ActorEntity>>> searchActor(String query);
  Future<Either<Failure, List<MovieEntity>>> fetchTrendingMovies();
  Future<Either<Failure, List<MovieEntity>>> fetchRecommmendedMovies(int id,);
}
