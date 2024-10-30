import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/auth/domain/entities/user_entity.dart';
import 'package:cinemax_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

class SignUpUseCase extends UseCase<UserEntity, String> {
  final AuthRepo authRepo;

  SignUpUseCase({required this.authRepo});
  @override
  // ignore: avoid_renaming_method_parameters
  Future<Either<Failure, UserEntity>> call([String? email, String? password]) {
    return authRepo.signUp(email: email!, password: password!);
  }
}
