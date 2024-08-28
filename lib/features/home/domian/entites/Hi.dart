


import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId:0)
class MovieEntity extends HiveObject {
  @HiveField(0)
  final String moviTtitle;
  @HiveField(1)
  final List<num> gener;
  @HiveField(2)
  final num rating;
  @HiveField(3)
  final String date;
  @HiveField(4)
  final String image;
  @HiveField(5)
  final num movieId;
   @HiveField(6)
  final String horizentalImage;

  MovieEntity( 
      {required this.moviTtitle,
      required this.gener,
      required this.movieId,
      required this.rating,
      required this.date,
      required this.image,
     required this.horizentalImage,});
}
