import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/features/auth/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> signIn(
      {required String email, required String password});
  Future<Either<Failure, UserEntity>> signUp(
      {required String email, required String password});

  Future<Either<Failure, UserEntity>> signInWithGoolge();
  Future<Either<Failure, UserEntity>> signInWithFacebook();
  Future<Either<Failure, void>> updateDisplayName({required String name});
  Future<Either<Failure, void>> verficationEmailBeforeUpdated(
      {required String email});
}
