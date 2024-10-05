import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/update_email_use_case.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/update_name_use_case.dart';
import 'package:meta/meta.dart';

part 'firebase_opreations_state.dart';

class FirebaseOpreationsCubit extends Cubit<FirebaseOpreationsState> {
  FirebaseOpreationsCubit(
      {required this.updateEmailUseCase, required this.updateNameUseCase})
      : super(FirebaseOpreationsInitial());
  final UpdateEmailUseCase updateEmailUseCase;
  final UpdateNameUseCase updateNameUseCase;

  Future<void> updateDisplayName(String name) async {
    emit(
      FirebaseOpreationsLoading(),
    );
    final newName = await updateNameUseCase.call(name);
    newName.fold((failure) {
      emit(
        FirebaseOpreationsFailure(errMessage: failure.errorMessage),
      );
    }, (newName) {
      emit(
        FirebaseOpreationsSuccess(),
      );
    });
  }

  Future<void> updateEmail(String email) async {
    emit(
      FirebaseOpreationsLoading(),
    );
    final newMail = await updateEmailUseCase.call(email);
    newMail.fold((failure) {
      emit(
        FirebaseOpreationsFailure(errMessage: failure.errorMessage),
      );
    }, (newMail) {
      emit(
        FirebaseOpreationsSuccess(),
      );
    });
  }
}
