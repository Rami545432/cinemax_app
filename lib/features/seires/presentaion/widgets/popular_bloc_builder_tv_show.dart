import 'package:cinemax_app/features/home/presentaion/views_models/widgets/film_card_loading_list_view.dart';
import 'package:cinemax_app/features/seires/presentaion/manger/fetch_popular_tv_shows_cubit/fetch_popular_tv_shows_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/tv_most_popular_compontes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TvPopularBlocBuilder extends StatelessWidget {
  const TvPopularBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchPopularTvShowsCubit, FetchPopularTvShowsState>(
      builder: (context, state) {
        if (state is FetchPopularTvShowsSuccess) {
          return TvMostPopularCompontes(
            tvShows: state.tvShows,
          );
        }
        if (state is FetchPopularTvShowsFailure) {
          return Text(state.errorMessage);
        }
        return FilmCardListViewLoading();
      },
    );
  }
}
