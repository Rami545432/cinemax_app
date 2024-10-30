import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/widgets/wish_card.dart';
import 'package:flutter/material.dart';

class WishListBody extends StatelessWidget {
  const WishListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            MainAppBar(title: 'WishList'),
           SizedBox(height: 30,),
           WishListCard(),
          ],
        ),
      ),
    );
  }
}
