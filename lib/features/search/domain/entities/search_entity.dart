import 'package:cinemax_app/features/search/data/models/search_actor_model/known_for.dart';

class ActorEntity {
  final String actorImage;
    final String actorName;
  final String movietitle;
  final List<KnownFor> movieInfo;
  final String data;
  final String rating;

  ActorEntity({required this.actorImage, required this.actorName, required this.movietitle, required this.movieInfo, required this.data, required this.rating});

}



