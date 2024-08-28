import 'package:cinemax_app/features/wishList/presentaion/view_models/views/wish_list_body.dart';
import 'package:flutter/material.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: WishListBody(),
    ));
  }
}
