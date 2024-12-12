import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/cubits/gener_cubit/gener_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_popular_movie_cubit/fetch_popular_movies_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/see_all_widgets/see_all_bloc_consumer.dart';

class SeeAllViewBody extends StatefulWidget {
  const SeeAllViewBody({
    super.key,
  });

  @override
  State<SeeAllViewBody> createState() => _SeeAllViewBodyState();
}

class _SeeAllViewBodyState extends State<SeeAllViewBody> {
  late ScrollController _scrollController;
  var nextPage = 1;
  bool isLoading = false;
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() async {
    if (_scrollController.position.pixels >=
        0.7 * _scrollController.position.maxScrollExtent) {
      if (!isLoading) {
        isLoading = true;
        final selectedIndex = BlocProvider.of<GenerCubit>(context).state;
        await BlocProvider.of<FetchPopularMoviesCubit>(context)
            .fetchPopularMovie(getGenreId(buttonTexts[selectedIndex]),
                page: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SeeAllBLocConsumer(scrollController: _scrollController);
  }
}
