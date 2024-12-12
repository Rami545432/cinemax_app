import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/facebook_sign_in_use_case.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/google_sign_in_use_case.dart';
import 'package:meta/meta.dart';

part 'social_media_sign_up_state.dart';

class SocialMediaSignUpCubit extends Cubit<SocialMediaSignUpState> {
  SocialMediaSignUpCubit(this.googleSignInUseCase, this.facebookSignInUseCase)
      : super(SocialMediaSignUpInitial());
  final GoogleSignInUseCase googleSignInUseCase;
  final FacebookSignInUseCase facebookSignInUseCase;
  Future<void> signInWithGoolge() async {
    emit(
      SocialMediaSignUpLoading(),
    );
    var stateus = await googleSignInUseCase.call();
    stateus.fold((failure) {
      emit(
        SocialMediaSignUpFailure(errorMessage: failure.errorMessage),
      );
    }, (stateus) {
      emit(SocialMediaSignUpSuccess());
    });
  }

  Future<void> signInWithFacebook() async {
    emit(SocialMediaSignUpLoading());
    var stateus = await facebookSignInUseCase.call();
    stateus.fold((failure) {
      emit(
        SocialMediaSignUpFailure(errorMessage: failure.errorMessage),
      );
    }, (stateus) {
      emit(
        SocialMediaSignUpSuccess(),
      );
    });
  }
}
