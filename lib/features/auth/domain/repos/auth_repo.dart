import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/features/auth/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserData>> signIn(
      {required String email, required String password});
  Future<Either<Failure, UserData>> signUp(
      {required String email, required String password});
}
