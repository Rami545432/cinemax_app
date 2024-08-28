import 'package:cinemax_app/features/onBoarding/presentaion/view_models/views/on_boarding_body_two.dart';
import 'package:flutter/material.dart';

class OnBoardingViewTwo extends StatelessWidget {
  const OnBoardingViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnBoardingBodyTwo(),
      ),
    );
  }
}
