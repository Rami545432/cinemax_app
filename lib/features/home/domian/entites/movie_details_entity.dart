import 'package:cinemax_app/features/home/data/models/movie_details_model/cast.dart';
import 'package:cinemax_app/features/home/data/models/movie_details_model/result.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'movie_details_entity.g.dart';

@HiveType(typeId: 7)
class MovieDetailsEntity {
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
  final int duration;
  @HiveField(7)
  final List<Cast> actorName;

  @HiveField(8)
  final String storyLine;
  @HiveField(9)
  final List<Result> videoKey;
  MovieDetailsEntity(
      {required this.moviTtitle,
      required this.gener,
      required this.rating,
      required this.date,
      required this.image,
      required this.movieId,
      required this.duration,
      required this.actorName,
      required this.storyLine,
      required this.videoKey});
}
