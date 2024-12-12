import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerticalCard extends StatelessWidget {
  const VerticalCard({
    super.key,
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.gener,
    required this.rating,
    required this.locataion,
    required this.generState,
  });

  final int id;
  final String imageUrl, title, locataion;
  final List<int> gener;
  final num rating;
  final int generState;

  @override
  Widget build(BuildContext context) {
    final generButtonText = buttonTexts[generState];
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(locataion, extra: id);
      },
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: '$baseImageUrl$imageUrl',
                  width: 135,
                  height: 178,
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.185,
                top: 10,
                child: Rating(
                  rating: rating,
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
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.textstyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    generButtonText == 'All'
                        ? getGenreName(gener.isNotEmpty ? gener[0] : 27)
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
