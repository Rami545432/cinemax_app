import 'package:cinemax_app/features/seires/presentaion/manger/fetch_top_rated_tv_shows_cubit/fetch_top_rated_tv_shows_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/views/top_rated_see_all_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopRatedSeeAllView extends StatefulWidget {
  const TopRatedSeeAllView({super.key});

  @override
  State<TopRatedSeeAllView> createState() => _TopRatedSeeAllViewState();
}

class _TopRatedSeeAllViewState extends State<TopRatedSeeAllView> {
  @override
  void initState() {
    BlocProvider.of<FetchTopRatedTvShowsCubit>(context).fetchTopRatedTvShows();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TopRatedSeeAllBody(),
      ),
    );
  }
}
