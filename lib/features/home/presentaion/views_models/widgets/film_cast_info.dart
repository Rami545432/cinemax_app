import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class FilmCastInfo extends StatelessWidget {
  const FilmCastInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: CachedNetworkImage(
                imageUrl:
                    'https://image.tmdb.org/t/p/w500//k21WcVCo5TAhKPEAMXSO5g9HC21.jpg'),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jay DeVon Johnson',
              style:
                  AppStyles.textstyle14.copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Acting',
              style: AppStyles.textstyle12,
            )
          ],
        )
      ],
    );
  }
}
