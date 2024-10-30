import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/seires/domain/repos/series_repo.dart';
import 'package:dartz/dartz.dart';

import '../entites/series_entity_details.dart';

class FetchTvShowDetailsUseCase
    extends UseCase<List<SeriesEntityDetails>, int> {
  final SeriesRepo seriesRepo;

  FetchTvShowDetailsUseCase({required this.seriesRepo});
  @override
  Future<Either<Failure, List<SeriesEntityDetails>>> call(
      [int? parameter]) async {
    return await seriesRepo.fetchTvShowDetail(tvid: parameter!);
  }
}
