import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/home/domian/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../entites/entity.dart';

class FetchNewstMovieCase extends UseCase<List<MovieEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewstMovieCase({required this.homeRepo});
  @override
  Future<Either<Failure, List<MovieEntity>>> call([NoParam? parameter]) {
    return homeRepo.fetchNewsetMovies();
  }
}
