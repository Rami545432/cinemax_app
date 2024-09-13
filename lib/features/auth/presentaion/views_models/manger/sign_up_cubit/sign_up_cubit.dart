import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/register_account_use_case.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

import '../../../../domain/entities/user_entity.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.signUpUseCase) : super(SignUpInitial());
  final SignUpUseCase signUpUseCase;
  Future<void> signUp({required String email, required String password}) async {
    var authOperation = await signUpUseCase.call(email, password);
    authOperation.fold((failure) {
      emit(
        SignUpFailure(errorMessage: failure.errorMessage),
      );
    }, (authOperation) {
      emit(
        SignUpSuccess(userData: authOperation),
      );
    });
  }
}
