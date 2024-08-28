import 'package:cinemax_app/features/onBoarding/presentaion/view_models/views/on_boarding_body_one.dart';
import 'package:flutter/material.dart';

class OnBoardingViewOne extends StatelessWidget {
  const OnBoardingViewOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnBoardingBodyOne(),
      ),
    );
  }
}
