import 'package:cinemax_app/features/home/presentaion/manger/fetch_newst_movies_cubit/fetch_newset_movies_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/horizontal_film_card_widgets/horizental_stack_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../core/utils/skeletionzed_loading_cards/horizental_stack_container_loading.dart';

class HorizintalFilmCardBlocBuilder extends StatelessWidget {
  const HorizintalFilmCardBlocBuilder({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNewsetMoviesCubit, FetchNewsetMoviesState>(
      builder: (context, state) {
        if (state is FetchNewsetMoviesSuccess) {
          return SizedBox(
            height: 180,
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                return HorzientalStackContainer(
                    movieEntity: state.movies[index]);
              },
            ),
          );
        }
        if (state is FetchNewsetMoviesFailure) {
          return Text(state.errorMessage);
        }
        return Skeletonizer(
          child: const HorzientalStackContainerLoading(),
        );
      },
    );
  }
}
