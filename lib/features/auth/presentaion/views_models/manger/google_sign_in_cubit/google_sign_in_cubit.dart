import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/facebook_sign_in_use_case.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/google_sign_in_use_case.dart';
import 'package:meta/meta.dart';

part 'google_sign_in_state.dart';

class AuthSignUpCubit extends Cubit<AuthSignUpState> {
  AuthSignUpCubit(this.googleSignInUseCase, this.facebookSignInUseCase)
      : super(AuthSignUpInitial());
  final GoogleSignInUseCase googleSignInUseCase;
  final FacebookSignInUseCase facebookSignInUseCase;
  Future<void> signInWithGoolge() async {
    emit(
      AuthSignUpLoading(),
    );
    var stateus = await googleSignInUseCase.call();
    stateus.fold((failure) {
      emit(
        AuthSignUpFailure(errorMessage: failure.errorMessage),
      );
    }, (stateus) {
      emit(AuthSignUpSuccess());
    });
  }

  Future<void> signInWithFacebook() async {
    emit(AuthSignUpLoading());
    var stateus = await facebookSignInUseCase.call();
    stateus.fold((failure) {
      emit(
        AuthSignUpFailure(errorMessage: failure.errorMessage),
      );
    }, (stateus) {
      emit(
        AuthSignUpSuccess(),
      );
    });
  }
}
