import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/search/domain/repo/search_repo.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:dartz/dartz.dart';

class SearchTvShowUseCase extends UseCase<List<SeriesEntity>, String> {
  final SearchRepo searchRepo;

  SearchTvShowUseCase({required this.searchRepo});
  @override
  Future<Either<Failure, List<SeriesEntity>>> call([String? parameter]) async {
    return await searchRepo.searchTvShows(parameter!);
  }
}
