import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/features/onBoarding/presentaion/view_models/views/view_one.dart';
import 'package:cinemax_app/features/onBoarding/presentaion/view_models/views/view_three.dart';
import 'package:cinemax_app/features/onBoarding/presentaion/view_models/views/view_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../manger/pagecontrollerCubit/pagecontroller_cubit.dart';

class OnBoardingTransistion extends StatelessWidget {
  const OnBoardingTransistion({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PagecontrollerCubit(PageController()),
      child: Stack(children: [
        BlocBuilder<PagecontrollerCubit, PagecontrollerState>(
          builder: (context, state) {
            return PageView(
              onPageChanged: (value) {},
              controller: state.pageController,
              children: const [
                OnBoardingViewOne(),
                OnBoardingViewTwo(),
                OnBoardingViewThree(),
              ],
            );
          },
        ),
        Builder(builder: (context) {
          return Positioned(
            bottom: 100,
            left: 100,
            child: SmoothPageIndicator(
                effect: ExpandingDotsEffect(
                    dotColor: const Color(0xff195461),
                    activeDotColor: AppPrimaryColors.blueAccent),
                onDotClicked: (index) {
                  BlocProvider.of<PagecontrollerCubit>(context)
                      .pageController
                      .animateToPage(index,
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.ease);
                },
                controller: BlocProvider.of<PagecontrollerCubit>(context)
                    .pageController,
                count: 3),
          );
        })
      ]),
    );
  }
}
