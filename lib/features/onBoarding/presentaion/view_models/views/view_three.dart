import 'package:cinemax_app/features/onBoarding/presentaion/view_models/views/on_boarding_body_three.dart';
import 'package:flutter/material.dart';

class OnBoardingViewThree extends StatelessWidget {
  const OnBoardingViewThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnBoardingBodyThree(),
      ),
    );
  }
}
