import 'package:cinemax_app/features/wishList/domain/repos/wish_list_repo.dart';

class DeleteWishCaseUseCase {
  final WishListRepo wishListRepo;

  DeleteWishCaseUseCase({required this.wishListRepo});
  Future<void> call([int? movieId]) {
    return wishListRepo.deleteWishList(movieId!);
  }
}
