import 'package:cinemax_app/features/wishList/domain/entities/wish_list_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class WishListModel extends WishListEntity {
  final String itemimageUrl;
  final String itemTitle;
  final String itemGener;
  final String itemType;
  final int itemMovieId;
  final String itemuserId;

  WishListModel(
      {required this.itemimageUrl,
      required this.itemTitle,
      required this.itemGener,
      required this.itemType,
      required this.itemMovieId,
      required this.itemuserId})
      : super(
            imageUrl: itemimageUrl,
            title: itemTitle,
            gener: itemGener,
            type: itemType,
            movieId: itemMovieId,
            userId: itemuserId);

  factory WishListModel.fromJson(Map<String, dynamic> itemData) {
    return WishListModel(
        itemimageUrl: itemData['imageUrl'],
        itemTitle: itemData['title'],
        itemGener: itemData['genre'],
        itemType: itemData['type'],
        itemMovieId: int.tryParse(itemData['movieId'].toString()) ?? 0,
        itemuserId: itemData['userId']);
  }
  Map<String, dynamic> toJson() {
    return {
      'imageUrl': itemimageUrl,
      'title': itemTitle,
      'genre': itemGener,
      'type': itemType,
      'movieId': itemMovieId,
      'addedAt': FieldValue.serverTimestamp(),
      'userId': itemuserId,
    };
  }
}
