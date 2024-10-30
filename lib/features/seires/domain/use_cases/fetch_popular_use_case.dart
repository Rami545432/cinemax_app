import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/seires/domain/repos/series_repo.dart';
import 'package:dartz/dartz.dart';

import '../entites/series_entity.dart';

class FetchPopularTvShowsUseCase extends UseCase<List<SeriesEntity>, dynamic> {
  final SeriesRepo seriesRepo;

  FetchPopularTvShowsUseCase({required this.seriesRepo});
  @override
  // ignore: avoid_renaming_method_parameters
  Future<Either<Failure, List<SeriesEntity>>> call(
      // ignore: avoid_renaming_method_parameters
      [dynamic generId,
      int page = 1]) async {
    return await seriesRepo.fetchPopularTvShows(page: page, generId);
  }
}
