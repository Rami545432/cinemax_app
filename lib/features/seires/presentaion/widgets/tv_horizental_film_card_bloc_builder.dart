import 'package:cinemax_app/features/seires/presentaion/manger/fetch_trending_tv_show_cubit/fetch_trending_tv_show_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/tv_horizental_stack_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TvHorizentalFilmCardBlocBuilder extends StatelessWidget {
  const TvHorizentalFilmCardBlocBuilder({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchTrendingTvShowCubit, FetchTrendingTvShowState>(
      builder: (context, state) {
        if (state is FetchTrendingTvShowSuccess) {
          return SizedBox(
            height: 180,
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: state.tvShows.length,
              itemBuilder: (context, index) {
                return TvHorzientalStackContainer(
                    seriesEntity: state.tvShows[index]);
              },
            ),
          );
        }
        if (state is FetchTrendingTvShowFailure) {
          return Text(state.errorMessage);
        }
        return const Text('data');
      },
    );
  }
}
