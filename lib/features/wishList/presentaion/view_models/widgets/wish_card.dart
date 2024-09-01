import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/widgets/wish_card_column_comp.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class WishListCard extends StatelessWidget {
  const WishListCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    EdgeInsets padding;
    if (screenWidth < 600) {
      padding =
          const EdgeInsets.symmetric(horizontal: 10, vertical: 16.0); // Mobile
    } else {
      padding = const EdgeInsets.symmetric(
          horizontal: 16.0, vertical: 24.0); // Tablet or larger
    }
    return Padding(
      padding: padding,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 1.5,
        decoration: BoxDecoration(
          color: AppPrimaryColors.soft,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 12,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                  height: 83,
                  width: 121,
                  child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      imageUrl:
                          'https://image.tmdb.org/t/p/w500//oGythE98MYleE6mZlGs5oBGkux1.jpg')),
            ),
            const SizedBox(
              width: 16,
            ),
            const WishCardColumnComponets()
          ],
        ),
      ),
    );
  }
}
