part of 'social_media_sign_up_cubit.dart';

@immutable
abstract class SocialMediaSignUpState {}

class SocialMediaSignUpInitial extends SocialMediaSignUpState {}

class SocialMediaSignUpSuccess extends SocialMediaSignUpState {}

class SocialMediaSignUpFailure extends SocialMediaSignUpState {
  final String errorMessage;

  SocialMediaSignUpFailure({required this.errorMessage});
}

class SocialMediaSignUpLoading extends SocialMediaSignUpState {}
