import 'package:cinemax_app/core/utils/cubits/tv_gener_cubit/gener_tv_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/manger/fetch_popular_tv_shows_cubit/fetch_popular_tv_shows_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/utils/app_colors.dart';
import 'see_all_tv_popular_scroll_view.dart';

class SeeAllTvPopBlocConsumer extends StatelessWidget {
  const SeeAllTvPopBlocConsumer({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchPopularTvShowsCubit, FetchPopularTvShowsState>(
      listener: (context, state) {
        if (state is FetchPopularTvShowsSuccess) {
          final tvShows = BlocProvider.of<GenerTvCubit>(context)
              .getSeriesForSelectedGener();

          if (tvShows.isEmpty) {
            tvShows.clear();
          }
          for (var tvshow in state.tvShows) {
            if (!tvShows.contains(tvshow)) {
              final selectedIndex =
                  BlocProvider.of<GenerTvCubit>(context).state;

              BlocProvider.of<GenerTvCubit>(context)
                  .addTvShowsToGener(selectedIndex, tvshow);
            }
          }
        }
      },
      builder: (context, state) {
        final series =
            BlocProvider.of<GenerTvCubit>(context).getSeriesForSelectedGener();
        if (state is FetchPopularTvShowsSuccess ||
            state is FetchPopularTvShowsPaginationLoading) {
          return SeeAllTvCustomScrollView(
              scrollController: _scrollController, series: series);
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
