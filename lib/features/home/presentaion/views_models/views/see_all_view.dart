import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/cubits/gener_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_popular_movie_cubit/fetch_popular_movies_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/views/see_all_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAllView extends StatefulWidget {
  const SeeAllView({
    super.key,
  });

  @override
  State<SeeAllView> createState() => _SeeAllViewState();
}

class _SeeAllViewState extends State<SeeAllView> {
  @override
  void initState() {
    BlocProvider.of<FetchPopularMoviesCubit>(context).fetchPopularMovie(
      getGenreId(
        buttonTexts[context.read<GenerCubit>().state],
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SeeAllViewBody(),
      ),
    );
  }
}
