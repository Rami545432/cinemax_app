import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/splash/presentaion/views_models/widgets/text_animation.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          primaryPhoto(),
          const SizedBox(
            height: 16,
          ),
          const TextAnimation(),
        ],
      ),
    );
  }
}
