import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/cubits/tv_gener_cubit/gener_tv_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/manger/fetch_popular_tv_shows_cubit/fetch_popular_tv_shows_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/most_popular_widgets/see_all_tv_pop_widgets/see_all_tv_pop_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAllTvPopularBody extends StatefulWidget {
  const SeeAllTvPopularBody({super.key});

  @override
  State<SeeAllTvPopularBody> createState() => _SeeAllTvPopularBodyState();
}

class _SeeAllTvPopularBodyState extends State<SeeAllTvPopularBody> {
  late final ScrollController scrollController;
  bool isLoading = false;
  var nextPage = 1;
  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(onScroll);
    super.initState();
  }

  void onScroll() async {
    if (scrollController.position.pixels >=
        0.7 * (scrollController.position.maxScrollExtent)) {
      if (!isLoading) {
        isLoading = true;
        var selectedIndex = BlocProvider.of<GenerTvCubit>(context).state;
        await BlocProvider.of<FetchPopularTvShowsCubit>(context)
            .fetchPopularTvShows(
          page: nextPage++,
          getGenreId(buttonTexts[selectedIndex]),
        );
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SeeAllTvPopBlocConsumer(scrollController: scrollController);
  }
}
