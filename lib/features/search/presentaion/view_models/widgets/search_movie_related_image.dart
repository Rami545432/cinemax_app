import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/search/data/models/search_actor_model/known_for.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/actor_movie_rating.dart';
import 'package:flutter/material.dart';

class MovieRelatedImageStack extends StatelessWidget {
  const MovieRelatedImageStack({
    super.key,
    required this.knownFor,
  });
  final KnownFor knownFor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
              errorWidget: (context, url, error) {
                return const Icon(Icons.add_ic_call_outlined);
              },
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width * 0.27,
              imageUrl: '$baseImageUrl${knownFor.posterPath}'),
        ),
        Positioned(
          left: 45,
          top: 6,
          child: MovieActorRating(rating:knownFor.voteAverage??4.5)
        ),
      ],
    );
  }
}
