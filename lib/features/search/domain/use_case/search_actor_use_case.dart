import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/search/domain/entities/search_actor_entity.dart';
import 'package:cinemax_app/features/search/domain/repo/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchActorUseCase extends UseCase<List<SearchActorEntity>, String> {
  final SearchRepo searchRepo;

  SearchActorUseCase({required this.searchRepo});
  @override
  Future<Either<Failure, List<SearchActorEntity>>> call([String? parameter]) {
    return searchRepo.searchActor(parameter!);
  }
}
