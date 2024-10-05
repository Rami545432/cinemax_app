import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TvHorzientalStackContainer extends StatelessWidget {
  const TvHorzientalStackContainer({
    super.key,
    required this.seriesEntity,
  });
  final SeriesEntity? seriesEntity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(Approuter.kTvDetailsView, extra: seriesEntity!.tvId);
      },
      child: Stack(children: [
        Container(
          height: 154,
          margin: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              
                width: 400,
                fit: BoxFit.fill,
                errorWidget: (context, url, error) {
                  log(error.toString());
                  return const Icon(Icons.error);
                },
                imageUrl:
                    '$baseImageUrl${seriesEntity?.tvBackDropPath ?? seriesEntity?.tvPosterPath}'),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.08,
          left: MediaQuery.of(context).size.width * 0.06,
          child: SizedBox(
            width: 300,
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              seriesEntity!.tvName,
              style: AppStyles.textstyle16,
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.04,
          left: MediaQuery.of(context).size.width * 0.06,
          child: SizedBox(
            width: 300,
            child: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              'On ${seriesEntity!.tvFirstAirDate}',
              style: AppStyles.textstyle16,
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ]),
    );
  }
}
