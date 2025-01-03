import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/auth/domain/entities/user_entity.dart';
import 'package:cinemax_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

class FacebookSignInUseCase extends UseCase<UserEntity, NoParam> {
  final AuthRepo authRepo;

  FacebookSignInUseCase({required this.authRepo});
  @override
  Future<Either<Failure, UserEntity>> call([NoParam? parameter]) async {
    return await authRepo.signInWithFacebook();
  }
}
