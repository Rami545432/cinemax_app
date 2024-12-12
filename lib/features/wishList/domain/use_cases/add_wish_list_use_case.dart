import 'package:cinemax_app/features/wishList/domain/repos/wish_list_repo.dart';

class AddWishListUseCase {
  final WishListRepo wishListRepo;

  AddWishListUseCase({required this.wishListRepo});
  Future<void> call(
      [int? movieId,
      String? title,
      String? imageUrl,
      String? genre,
      String? type,
      String? userId]) {
    return wishListRepo.addWishList(
        movieId!, title!, imageUrl!, genre!, type!, userId!);
  }
}
