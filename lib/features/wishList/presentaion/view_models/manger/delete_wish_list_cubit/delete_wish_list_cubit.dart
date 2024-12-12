import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/wishList/domain/entities/wish_list_entity.dart';
import 'package:cinemax_app/features/wishList/domain/use_cases/delete_wish_case_use_case.dart';
import 'package:meta/meta.dart';

part 'delete_wish_list_state.dart';

class DeleteWishListCubit extends Cubit<DeleteWishListState> {
  DeleteWishListCubit(this.deleteWishCaseUseCase)
      : super(DeleteWishListInitial());
  final DeleteWishCaseUseCase deleteWishCaseUseCase;
  Future<void> deleteWish(int movieId) async {
    try {
      await deleteWishCaseUseCase.call(movieId);
    } catch (e) {
      emit(
        DeleteWishListFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
