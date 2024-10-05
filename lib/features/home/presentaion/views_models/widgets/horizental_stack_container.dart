import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HorzientalStackContainer extends StatelessWidget {
  const HorzientalStackContainer({
    super.key,
    required this.movieEntity,
  });
  final MovieEntity? movieEntity;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(Approuter.kDetailView, extra: movieEntity!.movieId);
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
                  return const Icon(Icons.error);
                },
                imageUrl:
                    '$baseImageUrl${movieEntity?.horizentalImage ?? movieEntity?.image}'),
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
              movieEntity!.moviTtitle,
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
              'On ${movieEntity!.date}',
              style: AppStyles.textstyle16,
              textAlign: TextAlign.start,
            ),
          ),
        ),
      ]),
    );
  }
}
