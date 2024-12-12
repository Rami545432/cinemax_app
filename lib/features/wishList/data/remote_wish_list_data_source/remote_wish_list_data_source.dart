import 'package:cinemax_app/features/wishList/data/models/wish_list_model.dart';
import 'package:cinemax_app/features/wishList/domain/entities/wish_list_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class RemoteWishListDataSource {
  Future<void> addWishList(int movieId, String title, String imageUrl,
      String genre, String type, String userId);
  Future<void> deleteWishList(
    int movieId,
  );
  Stream<List<WishListEntity>> getFavorites(String userId);
}

class RemoteWishListDataSourceImpl extends RemoteWishListDataSource {
  final userId = FirebaseAuth.instance.currentUser?.uid??'';
  @override
  Future<void> addWishList(int movieId, String title, String imageUrl,
      String genre, String type, String userId) {
    return FirebaseFirestore.instance
        .collection('usersFav')
        .doc(userId)
        .collection('favorite')
        .doc(movieId.toString())
        .set(
          ({
            'movieId': movieId,
            'title': title,
            'imageUrl': imageUrl,
            'genre': genre,
            'type': type,
            'addedAt': FieldValue.serverTimestamp(),
            'userId': userId,
          }),
        );
  }

  @override
  Future<void> deleteWishList(
    int movieId,
  ) {
    return FirebaseFirestore.instance
        .collection('usersFav')
        .doc(userId)
        .collection('favorite')
        .doc(movieId.toString())
        .delete();
  }

  @override
  Stream<List<WishListEntity>> getFavorites(String userId) {
    return FirebaseFirestore.instance
        .collection('usersFav')
        .doc(userId)
        .collection('favorite')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) {
        return WishListModel.fromJson(doc.data());
      }).toList();
    });
  }
}
