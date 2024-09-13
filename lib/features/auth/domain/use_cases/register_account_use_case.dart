import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/auth/domain/entities/user_entity.dart';
import 'package:cinemax_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpUseCase extends UseCase<UserData, String> {
  final AuthRepo authRepo;

  SignUpUseCase({required this.authRepo});
  @override
  // ignore: avoid_renaming_method_parameters
  Future<Either<Failure, UserData>> call([String? email, String? password]) {
    return authRepo.signUp(email: email!, password: password!);
  }
}
