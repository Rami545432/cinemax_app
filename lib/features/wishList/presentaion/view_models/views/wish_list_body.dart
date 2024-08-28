import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:flutter/material.dart';


class WishListBody extends StatelessWidget {
  const WishListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          MainAppBar(title: 'WishList'),
     
        ],
      ),
    );
  }
}

