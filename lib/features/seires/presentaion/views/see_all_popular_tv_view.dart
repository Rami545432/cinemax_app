import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/cubits/tv_gener_cubit/gener_tv_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/manger/fetch_popular_tv_shows_cubit/fetch_popular_tv_shows_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/views/see_all_popular_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAllPopularTvView extends StatefulWidget {
  const SeeAllPopularTvView({super.key});

  @override
  State<SeeAllPopularTvView> createState() => _SeeAllPopularTvViewState();
}

class _SeeAllPopularTvViewState extends State<SeeAllPopularTvView> {
  @override
  void initState() {
    var selectedIndex = BlocProvider.of<GenerTvCubit>(context).state;
    BlocProvider.of<FetchPopularTvShowsCubit>(context).fetchPopularTvShows(
      getGenreId(buttonTexts[selectedIndex]),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SeeAllTvPopularBody(),
      ),
    );
  }
}
