part of 'sign_in_cubit.dart';

@immutable
abstract class SignInState {}

class SignInInitial extends SignInState {}
class SignInSuccess extends SignInState {
  final UserData userData;

  SignInSuccess({required this.userData});
}
class SignInLoading extends SignInState {}
class SignInFailure extends SignInState {
  final String errorMessage;

  SignInFailure({required this.errorMessage});
}
