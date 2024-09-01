import 'package:hive_flutter/hive_flutter.dart';
part 'entity.g.dart';

@HiveType(typeId: 32)
class MovieEntity {
  @HiveField(0)
  final String moviTtitle;
  @HiveField(1)
  final List<int> gener;
  @HiveField(2)
  final num rating;
  @HiveField(3)
  final String date;
  @HiveField(4)
  final String image;
  @HiveField(5)
  final int movieId;
  @HiveField(6)
  final String horizentalImage;
  // @HiveField(6)
  // final int? duration;

  MovieEntity({
    required this.moviTtitle,
    required this.gener,
    required this.movieId,
    required this.rating,
    required this.date,
    required this.image,
    required this.horizentalImage,
  });
}
