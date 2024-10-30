import 'package:cinemax_app/features/seires/presentaion/manger/fetch_top_rated_tv_shows_cubit/fetch_top_rated_tv_shows_cubit.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/top_rated_see_all_widgets/top_rated_see_all_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopRatedSeeAllBody extends StatefulWidget {
  const TopRatedSeeAllBody({
    super.key,
  });

  @override
  State<TopRatedSeeAllBody> createState() => _SeeAllViewBodyState();
}

class _SeeAllViewBodyState extends State<TopRatedSeeAllBody> {
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

        await BlocProvider.of<FetchTopRatedTvShowsCubit>(context)
            .fetchTopRatedTvShows(page: nextPage++);
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
    return TopRatedSeeAllBlocConsumer(scrollController: _scrollController);
  }
}
