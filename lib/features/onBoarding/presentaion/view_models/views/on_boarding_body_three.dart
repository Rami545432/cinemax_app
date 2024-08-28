import 'package:cinemax_app/features/onBoarding/presentaion/view_models/widgets/custom_container_last_page.dart.dart';
import 'package:flutter/material.dart';

class OnBoardingBodyThree extends StatelessWidget {
  const OnBoardingBodyThree({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 40, top: 40),
          child: Image.asset(
            'assets/images/Image(3).png',
            width: 300,
            height: 300,
          ),
        ),
        const SizedBox(
          height: 49,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainerLastPage(
              image: 'assets/images/button_three_bar.png',
              title: 'Offers ad-free viewing of high quality',
              subtitle:
                  'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient. ',
            ),
          ],
        )
      ],
    );
  }
}
