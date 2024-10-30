import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/vertical_film_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/cubits/gener_cubit.dart';
import '../../../../../core/utils/go_router.dart';

class FilmCardListView extends StatelessWidget {
  const FilmCardListView({
    super.key,
    required this.movieEntity,
  });
  final List<MovieEntity> movieEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: VerticalCard(
              generState: BlocProvider.of<GenerCubit>(context).state,
              locataion: Approuter.kDetailView,
              title: movieEntity[index].moviTtitle,
              gener: movieEntity[index].gener,
              id: movieEntity[index].movieId,
              imageUrl: movieEntity[index].image,
              rating: movieEntity[index].rating,
            ),
          );
        },
      ),
    );
  }
}
