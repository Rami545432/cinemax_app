import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/seires/domain/repos/series_repo.dart';
import 'package:dartz/dartz.dart';

import '../entites/series_entity.dart';

class FetchTopRatedTvShowsUseCase extends UseCase<List<SeriesEntity>, int> {
  final SeriesRepo seriesRepo;

  FetchTopRatedTvShowsUseCase({required this.seriesRepo});
  @override
  Future<Either<Failure, List<SeriesEntity>>> call([int? parameter]) async {
    return await seriesRepo.fetchTopRatedTvShows(page: parameter!);
  }
}
