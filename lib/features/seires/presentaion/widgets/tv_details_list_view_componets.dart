import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_descreption.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_details_widgets/movie_details_app_bar_comp.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_details_widgets/movie_details_image.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity_details.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/tv_data_and_sharing.dart';
import 'package:flutter/material.dart';

import 'tv_cast_container.dart';



class TvDetailsListViewComponets extends StatelessWidget {
  const TvDetailsListViewComponets({
    super.key,
    required this.seriesEntityDetails,
  });
  final SeriesEntityDetails seriesEntityDetails;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            MovieDetaisAppBarComp(imageurl:seriesEntityDetails.tvPosterPath,title: seriesEntityDetails.tvTitle,),
            MoiveDetailsImage(imageUrl: seriesEntityDetails.tvPosterPath),
            TvDataAndSharing(seriesEntityDetails: seriesEntityDetails),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        MovieDescreption(
          overview: seriesEntityDetails.tvStory,
        ),
        const SizedBox(
          height: 24,
        ),
        TvCastContainer(
          seriesEntityDetails: seriesEntityDetails,
        )
      ],
    );
  }
}
