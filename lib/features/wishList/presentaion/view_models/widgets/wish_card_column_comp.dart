import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/rating.dart';
import 'package:flutter/material.dart';

class WishCardColumnComponets extends StatelessWidget {
  const WishCardColumnComponets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Acrion',
          style: AppStyles.textstyle12.copyWith(color: Colors.white70),
        ),
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          width: 166,
          child: Text(
            'Spider-Man No Way Home',
            style: AppStyles.textstyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Moive',
              style: AppStyles.textstyle12.copyWith(),
            ),
            const SizedBox(
              width: 8,
            ),
            const Rating(),
            const SizedBox(
              width: 40,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
