import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/auth/domain/entities/user_entity.dart';
import 'package:cinemax_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

class SignInUseCase extends UseCase<UserData, String> {
  final AuthRepo authRepo;

  SignInUseCase({required this.authRepo});
  @override
  // ignore: avoid_renaming_method_parameters
  Future<Either<Failure, UserData>> call(
      [String? parameter, String? password]) async {
    return await authRepo.signIn(email: parameter!, password: password!);
  }
}
