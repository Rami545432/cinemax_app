import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/sub_bar.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_popular_movie_cubit/fetch_popular_movies_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/film_card_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PopularMoivesBlocBuilder extends StatelessWidget {
  const PopularMoivesBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchPopularMoviesCubit, FetchPopularMoviesState>(
      builder: (context, state) {
        if (state is FetchPopularMovieSuccess) {
          return Column(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SubBar(
                    onPressed: () {
                      GoRouter.of(context)
                          .push(Approuter.kSeeAllView, extra:  state.movies,);
                    },
                    title: 'Most popular',
                    textbutton: 'See All',
                  )),
              const SizedBox(
                height: 16,
              ),
              FilmCardListView(
                movieEntity: state.movies,
              ),
            ],
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
