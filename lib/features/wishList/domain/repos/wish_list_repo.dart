import 'package:cinemax_app/features/wishList/domain/entities/wish_list_entity.dart';

abstract class WishListRepo {
  Future<void> addWishList(
      int movieId, String title, String imageUrl, String genre, String type,String userId);
  Future<void> deleteWishList(int movieId);
  Stream<List<WishListEntity>> getFavorites(String userId);
}
