import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/seires/data/repos/series_repo_impl.dart';
import '../../../features/seires/domain/use_cases/fetch_popular_use_case.dart';
import '../../../features/seires/domain/use_cases/fetch_top_rated_use_case.dart';
import '../../../features/seires/domain/use_cases/fetch_trending_use_case.dart';
import '../../../features/seires/presentaion/manger/fetch_popular_tv_shows_cubit/fetch_popular_tv_shows_cubit.dart';
import '../../../features/seires/presentaion/manger/fetch_top_rated_tv_shows_cubit/fetch_top_rated_tv_shows_cubit.dart';
import '../../../features/seires/presentaion/manger/fetch_trending_tv_show_cubit/fetch_trending_tv_show_cubit.dart';
import '../../../features/seires/presentaion/views/series_view.dart';
import '../get_it.dart';

class SeiresTvShowsProviders extends StatelessWidget {
  const SeiresTvShowsProviders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchPopularTvShowsCubit(
            FetchPopularTvShowsUseCase(
              seriesRepo: getIt.get<SeriesRepoImpl>(),
            ),
          )..fetchPopularTvShows(''),
        ),
        BlocProvider(
          create: (context) => FetchTopRatedTvShowsCubit(
            FetchTopRatedTvShowsUseCase(
              seriesRepo: getIt.get<SeriesRepoImpl>(),
            ),
          )..fetchTopRatedTvShows(),
        ),
        BlocProvider(
          create: (context) => FetchTrendingTvShowCubit(
            FetchTreningTvShowsUseCase(
              seriesRepo: getIt.get<SeriesRepoImpl>(),
            ),
          )..fetchTrendingTvShow(),
        ),
      ],
      child: const SeriesView(),
    );
  }
}
