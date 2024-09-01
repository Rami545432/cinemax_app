import 'package:bloc/bloc.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/models/wish_model.dart';
import 'package:meta/meta.dart';

part 'addwishlist_state.dart';

class AddwishlistCubit extends Cubit<AddwishlistState> {
  AddwishlistCubit() : super(AddwishlistInitial());
  List<WishModel> wishList = [];

  WishModel? wishModel;
  void addWishList(WishModel item) {
    wishList.add(item);
    emit(
      AddwishlistLoaded(items: wishList),
    );
  }

  void removeWishList(WishModel item) {
    wishList.remove(item);
    emit(
      AddwishlistRemoved(wishList: wishList.toList()),
    );
  }
}
