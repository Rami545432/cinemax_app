import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/domain/entities/search_actor_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../seires/domain/entites/series_entity.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<MovieEntity>>> searchMovies(String query);
    Future<Either<Failure, List<SeriesEntity>>> searchTvShows(String query);

  Future<Either<Failure, List<SearchActorEntity>>> searchActor(String query);
  Future<Either<Failure, List<MovieEntity>>> fetchTrendingMovies();
  Future<Either<Failure, List<MovieEntity>>> fetchRecommmendedMovies(
    int id,
  );
}
