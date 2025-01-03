import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/home/domian/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../entites/entity.dart';

class FetchMostPopularUseCase extends UseCase<List<MovieEntity>, dynamic> {
  final HomeRepo homeRepo;

  FetchMostPopularUseCase({required this.homeRepo});
  @override
  Future<Either<Failure, List<MovieEntity>>> call(
      [dynamic parameter, int page = 10]) {
    return homeRepo.fetchMostPopularMovies(parameter!, page: page);
  }
}
