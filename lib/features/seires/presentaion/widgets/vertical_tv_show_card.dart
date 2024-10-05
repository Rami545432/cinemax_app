import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/cubits/tv_gener_cubit/gener_tv_cubit.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/rating.dart';
import 'package:cinemax_app/features/seires/domain/entites/series_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class VerticalTvShowCard extends StatelessWidget {
  const VerticalTvShowCard({
    super.key,
    required this.seriesEntity,
  });
  final SeriesEntity seriesEntity;
  @override
  Widget build(BuildContext context) {
    final generButtonText =
        buttonTexts[BlocProvider.of<GenerTvCubit>(context).state];
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(Approuter.kTvDetailsView, extra: seriesEntity.tvId);
      },
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image(
                  image:
                      NetworkImage('$baseImageUrl${seriesEntity.tvPosterPath}'),
                  width: 135,
                  height: 178,
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.185,
                top: 10,
                child: Rating(
                  rating: seriesEntity.tvRating,
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: AppPrimaryColors.soft,
              borderRadius: BorderRadius.circular(6),
            ),
            width: MediaQuery.of(context).size.width * 0.33,
            height: 56,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    seriesEntity.tvName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.textstyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    generButtonText == 'All'
                        ? getGenreName(seriesEntity.gener[0])
                        : generButtonText,
                    style: AppStyles.textstyle12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
