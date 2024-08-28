import 'package:cinemax_app/features/onBoarding/presentaion/view_models/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class OnBoardingBodyOne extends StatelessWidget {
  const OnBoardingBodyOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Image.asset(
              'assets/images/Image(1).png',
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24, top: 400, left: 24),
              child: CustomContainer(
                image: 'assets/images/button.png',
                title: 'Offers ad-free viewing of high quality',
                subtitle:
                    'Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem semper parturient. ',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
