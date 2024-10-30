import 'package:cinemax_app/core/utils/get_it.dart';
import 'package:cinemax_app/features/home/data/repos/home_repo_impl.dart';
import 'package:cinemax_app/features/home/domian/uses_cases/fetch_most_popular.dart';
import 'package:cinemax_app/features/home/domian/uses_cases/fetch_newst_movies.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_newst_movies_cubit/fetch_newset_movies_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_popular_movie_cubit/fetch_popular_movies_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/views/home_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewProviders extends StatelessWidget {
  const HomeViewProviders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) => FetchNewsetMoviesCubit(
                FetchNewstMovieCase(
                  homeRepo: getIt.get<HomeRepoImpl>(),
                ),
              )..fetchNewsetMovies()),
      BlocProvider(
          create: (context) => FetchPopularMoviesCubit(
                FetchMostPopularUseCase(
                  homeRepo: getIt.get<HomeRepoImpl>(),
                ),
              )..fetchPopularMovie('')),
    ], child: const HomeView());
  }
}
