import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/core/utils/use_case/use_case.dart';
import 'package:cinemax_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';

class UpdateEmailUseCase extends UseCase<void, String> {
  final AuthRepo authRepo;

  UpdateEmailUseCase({required this.authRepo});
  @override
  Future<Either<Failure, void>> call([String? parameter]) async {
    return await authRepo.verficationEmailBeforeUpdated(email: parameter!);
  }
}
