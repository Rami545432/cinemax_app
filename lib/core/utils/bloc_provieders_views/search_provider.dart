import 'package:cinemax_app/core/utils/get_it.dart';
import 'package:cinemax_app/features/search/data/repos/search_repo_impl.dart';
import 'package:cinemax_app/features/search/domain/use_case/fetch_recommended_movies.dart';
import 'package:cinemax_app/features/search/domain/use_case/fetch_trending_movies_use_case.dart';
import 'package:cinemax_app/features/search/domain/use_case/search_movie_use_case.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/manger/recommended_movies_cubit/recommended_movies_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/manger/search_movie_cubit/search_movie_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/manger/trending_movie_cubit/trending_movie_cubit.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchMultiProviders extends StatelessWidget {
  const SearchMultiProviders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        
        BlocProvider(
          create: (context) => RecommendedMoviesCubit(
            FetchRecommendedMoviesUseCase(
              searchRepo: getIt.get<SearchRepoImpl>(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => TrendingMovieCubit(
            FetchTrendingMoviesUseCase(
              searchRepo: getIt.get<SearchRepoImpl>(),
            ),
          )..fetchTrendingMovies(),
        ),
        BlocProvider(
          create: (context) => SearchMovieCubit(
            SearchMovieUseCase(
              searchRepo: getIt.get<SearchRepoImpl>(),
            ),
          ),
        ),
      ],
      child: const SearchView(),
    );
  }
}
