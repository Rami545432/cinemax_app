import 'package:cinemax_app/features/wishList/domain/entities/wish_list_entity.dart';
import 'package:cinemax_app/features/wishList/domain/repos/wish_list_repo.dart';

class GetFavoritesUseCase {
  final WishListRepo wishListRepo;

  GetFavoritesUseCase({required this.wishListRepo});
  Stream<List<WishListEntity>> call([String? userId]) {
    return wishListRepo.getFavorites(userId!);
  }
}
