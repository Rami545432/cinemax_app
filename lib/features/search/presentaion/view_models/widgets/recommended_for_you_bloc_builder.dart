import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/sub_bar.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/manger/recommended_movies_cubit/recommended_movies_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_film_card_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RecommendedForYouBlocBuilder extends StatelessWidget {
  const RecommendedForYouBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedMoviesCubit, RecommendedMoviesState>(
      builder: (context, state) {
        if (state is RecommendedMoviesSuccess) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SubBar(
                  title: 'Recommended to you',
                  textbutton: 'See All',
                  onPressed: () {
                    GoRouter.of(context)
                        .push(Approuter.kSeeAllView, extra: state.movies);
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SearchCardListView(
                movies: state.movies,
              ),
            ],
          );
        }
        if (state is RecommendedMoviesFailure) {
          return Text(state.errorMessage);
        }
    
        return Center(
          child: CircularProgressIndicator(
            color: AppPrimaryColors.blueAccent,
          ),
        );
      },
    );
  }
}
