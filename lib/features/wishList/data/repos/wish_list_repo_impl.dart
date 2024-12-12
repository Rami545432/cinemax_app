import 'dart:developer';

import 'package:cinemax_app/features/wishList/data/remote_wish_list_data_source/remote_wish_list_data_source.dart';
import 'package:cinemax_app/features/wishList/domain/entities/wish_list_entity.dart';
import 'package:cinemax_app/features/wishList/domain/repos/wish_list_repo.dart';

class WishListRepoImpl extends WishListRepo {
  final RemoteWishListDataSource remoteWishListDataSource;

  WishListRepoImpl({required this.remoteWishListDataSource});
  @override
  Future<void> addWishList(int movieId, String title, String imageUrl,
      String genre, String type,String userId) async {
    try {
      await remoteWishListDataSource.addWishList(
          movieId, title, imageUrl, genre, type,userId);
    } catch (e) {
      log(
        e.toString(),
      );
    }
  }

  @override
  Future<void> deleteWishList(int movieId) async {
    try {
      await remoteWishListDataSource.deleteWishList(movieId);
    } catch (e) {
      log(
        e.toString(),
      );
    }
  }

  @override
  Stream<List<WishListEntity>> getFavorites(String userId) {
   return remoteWishListDataSource.getFavorites(userId);
   
  }
}
