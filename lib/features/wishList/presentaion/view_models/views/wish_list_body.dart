import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/wish_list_card_bloc_builder.dart';

class WishListBody extends StatelessWidget {
  const WishListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ListView(
        children: [
          SizedBox(
            height: 8,
          ),
          MainAppBar(
            title: 'WishList',
            onPressed: () {
              GoRouter.of(context).push(Approuter.kHomeview);
            },
          ),
          SizedBox(
            height: 30,
          ),
          WishListCardBlocBuilder(),
        ],
      ),
    );
  }
}
