import 'package:cinemax_app/features/search/presentaion/view_models/manger/search_actor_cubit/seach_actor_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_actor_movie_related.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/sub_bar.dart';
import '../../../../home/presentaion/views_models/widgets/film_cast_info.dart';
import 'search_no_content.dart';

class SearcActorBuilder extends StatelessWidget {
  const SearcActorBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchActorCubit, SearchActorState>(
      builder: (context, state) {
        if (state is SearchActorSuccess) {
          if (state.suggestions.isEmpty) {
            return const SearchListNoContent();
          }
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
                        itemCount: state.suggestions.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return FilmCastInfo(
                              actorName:
                                  state.suggestions[index].actorName,
                              actorImage:
                                  state.suggestions[index].actorImage);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 24),
                      child:
                          SubBar(title: 'Movie Related', textbutton: ''),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 700,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: state.suggestions.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: SearchMovieRelatedCard(
                                actorEntity:
                                    state.suggestions[index].movieInfo),
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
        if (state is SearchActorFailure) {
          return Text(state.errorMessage);
        }
        return Container();
      },
    );
  }
}
