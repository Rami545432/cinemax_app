import 'package:cinemax_app/features/onBoarding/presentaion/view_models/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class OnBoardingBodyTwo extends StatelessWidget {
  const OnBoardingBodyTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 40,
        right: 30,
        top: 40,
      ),
      child: ListView(
        children: [
          Image.asset(
            'assets/images/Image.png',
            width: 339,
            height: 319,
          ),
          const SizedBox(
            height: 49,
          ),
          const CustomContainer(
            title: 'Offers ad-free viewing of high quality',
            subtitle:
                'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient. ',
            image: 'assets/images/Button_two_bar.png',
          )
        ],
      ),
    );
  }
}
