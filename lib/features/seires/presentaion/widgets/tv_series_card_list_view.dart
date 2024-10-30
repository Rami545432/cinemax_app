import 'package:cinemax_app/core/utils/cubits/tv_gener_cubit/gener_tv_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/vertical_film_card.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/go_router.dart';

class TvSeriesCardListView extends StatelessWidget {
  const TvSeriesCardListView({
    super.key,
    required this.seriesEntity,
  });
  final List<SeriesEntity> seriesEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: VerticalCard(
              generState: BlocProvider.of<GenerTvCubit>(context).state,
                locataion: Approuter.kTvDetailsView,
                title: seriesEntity[index].tvName,
                gener: seriesEntity[index].gener,
                id: seriesEntity[index].tvId,
                imageUrl: seriesEntity[index].tvPosterPath,
                rating: seriesEntity[index].tvRating,),
          );
        },
      ),
    );
  }
}
