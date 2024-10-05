import 'package:cinemax_app/features/search/domain/entities/search_actor_entity.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_actor_movie_related.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/sub_bar.dart';
import '../../../../home/presentaion/views_models/widgets/film_cast_info.dart';

class SearchActorRelatedinfo extends StatelessWidget {
  const SearchActorRelatedinfo({
    super.key,
    required this.suggestions,
  });
  final List<SearchActorEntity> suggestions;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Actors'),
          ),
          const SizedBox(
            height: 16,
          ),
          Column(
            children: [
              SizedBox(
                height: 60,
                child: ListView.builder(
                  itemCount: suggestions.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return FilmCastInfo(
                        actorName: suggestions[index].actorName,
                        actorImage: suggestions[index].actorImage);
                  },
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: SubBar(title: 'Movie Related', textbutton: ''),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 700,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: suggestions.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: SearchMovieRelatedCard(
                          actorEntity: suggestions[index].movieInfo),
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
