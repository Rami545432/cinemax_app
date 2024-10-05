import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity_details.dart';
import 'package:dartz/dartz.dart';

abstract class SeriesRepo {
  Future<Either<Failure, List<SeriesEntity>>> fetchTrendingTvShows(
      {int page = 10});
  Future<Either<Failure, List<SeriesEntity>>> fetchPopularTvShows(
      dynamic generId,
      {int page = 1});
  Future<Either<Failure, List<SeriesEntity>>> fetchTopRatedTvShows(
      {int page = 10});
  Future<Either<Failure, List<SeriesEntityDetails>>> fetchTvShowDetail(
      {required int tvid});
}
