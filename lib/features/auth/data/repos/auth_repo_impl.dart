import 'package:cinemax_app/core/utils/errors/errors.dart';
import 'package:cinemax_app/features/auth/domain/entities/user_entity.dart'; // Make sure this is your domain User entity
import 'package:cinemax_app/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Either<Failure, UserData>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      final fireBaseUser = userCredential.user;

      if (fireBaseUser != null) {
       
        final userData = UserData(email: fireBaseUser.email!, id: fireBaseUser.uid);
        return right(userData);
      } else {
        return left(FireBaseFailure(errorMessage: 'User not found'));
      }
    } on FirebaseAuthException catch (e) {
      return left(
        FireBaseFailure(
          errorMessage: e.message ?? 'An error occurred',
        ),
      );
    } catch (e) {
      return left(
        FireBaseFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserData>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      final fireBaseUser = userCredential.user;

      if (fireBaseUser != null) {
        final userData = UserData(email: fireBaseUser.email!, id: fireBaseUser.uid);
        return right(userData);
      } else {
        return left(FireBaseFailure(errorMessage: 'User not found'));
      }
    } on FirebaseAuthException catch (e) {
      return left(
        FireBaseFailure(
          errorMessage: e.message ?? 'An error occurred',
        ),
      );
    } catch (e) {
      return left(
        FireBaseFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}