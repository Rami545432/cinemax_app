import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:cinemax_app/features/seires/presentaion/manger/fetch_top_rated_tv_shows_cubit/fetch_top_rated_tv_shows_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/app_colors.dart';
import 'top_rated_see_all_custom_scroll_view.dart';

class TopRatedSeeAllBlocConsumer extends StatefulWidget {
  const TopRatedSeeAllBlocConsumer({
    super.key,
    required ScrollController scrollController,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;

  @override
  State<TopRatedSeeAllBlocConsumer> createState() =>
      _TopRatedSeeAllBlocConsumerState();
}

class _TopRatedSeeAllBlocConsumerState
    extends State<TopRatedSeeAllBlocConsumer> {
  List<SeriesEntity> series = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchTopRatedTvShowsCubit, FetchTopRatedTvShowsState>(
      listener: (context, state) {
        if (state is FetchTopRatedTvShowsSuccess) {
          for (var tvShow in state.tvShows) {
            if (!series.contains(tvShow)) {
              series.add(tvShow);
            }
          }
        }
      },
      builder: (context, state) {
        if (state is FetchTopRatedTvShowsSuccess ||
            state is FetchTopRatedTvShowsLoadingPagination) {
          return TopRatedSeeAllCustomScrollView(
              scrollController: widget._scrollController, series: series);
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
