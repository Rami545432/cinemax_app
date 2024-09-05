import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_actors_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/seach_actor_bloc_builder.dart';

class ActorSearchViewBody extends StatelessWidget {
  const ActorSearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          SearchActorsTextField(),
          SizedBox(
            height: 30,
          ),
          SearcActorBuilder()
        ],
      ),
    );
  }
}
