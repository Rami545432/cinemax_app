part of 'google_sign_in_cubit.dart';

@immutable
abstract class AuthSignUpState {}

class AuthSignUpInitial extends AuthSignUpState {}

class AuthSignUpSuccess extends AuthSignUpState {}

class AuthSignUpFailure extends AuthSignUpState {
  final String errorMessage;

  AuthSignUpFailure({required this.errorMessage});
}

class AuthSignUpLoading extends AuthSignUpState {}
