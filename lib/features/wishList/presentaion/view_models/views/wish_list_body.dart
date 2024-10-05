import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:flutter/material.dart';

class WishListBody extends StatelessWidget {
  const WishListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          const MainAppBar(title: 'WishList'),
          MaterialButton(
            onPressed: () {},
            child: const Text('data'),
          )
        ],
      ),
    );
  }
}
