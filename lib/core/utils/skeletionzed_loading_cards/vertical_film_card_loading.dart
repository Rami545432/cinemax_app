import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class VerticalFilmCardLoading extends StatelessWidget {
  const VerticalFilmCardLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  color: Colors.grey,
                  height: 178,
                  width: 135,
                )),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.185,
                top: 10,
                child: SizedBox(
                  height: 24,
                  width: MediaQuery.of(context).size.width * 0.15,
                )),
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
                  'movieEntity.moviTtitle',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyles.textstyle14
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const Text(
                  'asadsad',
                  style: AppStyles.textstyle12,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
