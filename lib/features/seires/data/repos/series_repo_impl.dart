import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/features/seires/data/data_soureces/local_series_tv_data_source.dart';
import 'package:cinemax_app/features/seires/data/data_soureces/remote_seires_tv_data_source.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity_details.dart';
import 'package:cinemax_app/features/seires/domain/repos/series_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/entites/series_entity.dart';

class SeriesRepoImpl extends SeriesRepo {
  final RemoteSeiresTvDataSource remoteSeiresTvDataSource;
  final LocalSeriesTvDataSource localSeriesTvDataSource;

  SeriesRepoImpl(this.localSeriesTvDataSource,
      {required this.remoteSeiresTvDataSource});
  @override
  Future<Either<Failure, List<SeriesEntity>>> fetchPopularTvShows(generId,
      {int page = 1}) async {
    try {
      // var cachedTvShows = localSeriesTvDataSource.fetchPopularTvShows(
      //   page: page,
      // );
      // if (cachedTvShows.isNotEmpty) {
      //   return right(cachedTvShows);
      // }
      var tvShows = await remoteSeiresTvDataSource.fetchPopularTvShows(generId,
          page: page);
      return right(tvShows);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(
          ServerFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<SeriesEntity>>> fetchTopRatedTvShows(
      {int page = 10}) async {
    try {
      // var cachedTvShows =
      //     localSeriesTvDataSource.fetchTopRatedTvShows(page: page);
      // if (cachedTvShows.isNotEmpty) {
      //   return right(cachedTvShows);
      // }
      var tvShows =
          await remoteSeiresTvDataSource.fetchTopRatedTvShows(page: page);
      return right(tvShows);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(
          ServerFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<SeriesEntity>>> fetchTrendingTvShows(
      {int page = 10}) async {
    try {
      
      var tvShows =
          await remoteSeiresTvDataSource.fetchTrendingTvShows(page: page);
      return right(tvShows);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      } else {
        return left(
          ServerFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<SeriesEntityDetails>>> fetchTvShowDetail(
      {required int tvid}) async {
    try {
      var tvShow = await remoteSeiresTvDataSource.fetchTvShowDetail(tvid: tvid);
      return right(tvShow);
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
