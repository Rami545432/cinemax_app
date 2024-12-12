class WishListEntity {
  final String imageUrl;
  final String title;
  final String gener;
  final String type;
  final int movieId;
  final String userId;
  WishListEntity(
      {required this.imageUrl,
      required this.title,
      required this.gener,
      required this.type,
      required this.movieId,
      required this.userId});
}
