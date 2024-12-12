import 'package:cinemax_app/core/utils/details_widgets/custom_descreption.dart';
import 'package:cinemax_app/core/utils/details_widgets/details_view_app_bar_comp.dart';
import 'package:cinemax_app/core/utils/details_widgets/details_view_image.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity_details.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/tv_details_widgets/episode_column.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/tv_details_widgets/tv_data_and_sharing.dart';
import 'package:flutter/material.dart';

import '../tv_cast_container.dart';

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
            DetalisViewAppBarCompoentes(
              imageurl: seriesEntityDetails.tvPosterPath,
              title: seriesEntityDetails.tvTitle,
              gener: seriesEntityDetails.geners.isNotEmpty?seriesEntityDetails.geners[0].toString():'',
              movieId: seriesEntityDetails.tvId,
              type: 'tv',
            ),
            DetailsViewImage(
              imageUrl: seriesEntityDetails.tvPosterPath,
            
            ),
            TvDataAndSharing(seriesEntityDetails: seriesEntityDetails),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        CustomDescreption(
          overview: seriesEntityDetails.tvStory,
        ),
        const SizedBox(
          height: 24,
        ),
        TvCastContainer(
          seriesEntityDetails: seriesEntityDetails,
        ),
        const SizedBox(
          height: 40,
        ),
        EpisodeColumn(
          seriesEntityDetails: seriesEntityDetails,
        ),
      ],
    );
  }
}
