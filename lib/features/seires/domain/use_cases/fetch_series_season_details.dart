import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_season_details_entitiy.dart';
import 'package:cinemax_app/features/seires/domain/repos/series_repo.dart';
import 'package:dartz/dartz.dart';

class FetchSeriesSeasonDetailsUseCase
    extends UseCase<List<SeriesSeasonDetailsEntitiy>, int> {
  final SeriesRepo seriesRepo;

  FetchSeriesSeasonDetailsUseCase({required this.seriesRepo});
  @override
  Future<Either<Failure, List<SeriesSeasonDetailsEntitiy>>> call(
      // ignore: avoid_renaming_method_parameters
      [int? tvid,
      int? season]) async {
    return await seriesRepo.fetchTvShowSeasonDetails(
        tvid: tvid!, season: season!);
  }
}
