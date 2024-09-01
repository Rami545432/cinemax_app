import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/home/domian/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchMovieDetailsUseCase extends UseCase<List<MovieDetailsEntity>, int> {
  final HomeRepo homeRepo;

  FetchMovieDetailsUseCase({required this.homeRepo});
  @override
  // ignore: avoid_renaming_method_parameters
  Future<Either<Failure, List<MovieDetailsEntity>>> call([int? movieId]) {
    return homeRepo.fetchMoviesDetails(movieId! );
  }
}
