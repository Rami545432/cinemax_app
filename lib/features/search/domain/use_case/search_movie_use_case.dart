import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/domain/repo/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchMovieUseCase extends UseCase<List<MovieEntity>, String> {
  final SearchRepo searchRepo;

  SearchMovieUseCase({required this.searchRepo});
  @override
  Future<Either<Failure, List<MovieEntity>>> call([String? parameter]) {
    return searchRepo.searchMovies(parameter!);
  }
}
