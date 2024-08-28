import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpMethods extends StatelessWidget {
  const SignUpMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset('assets/images/Google.svg'),
        SvgPicture.asset('assets/images/Apple.svg'),
        SvgPicture.asset('assets/images/Facebook.svg'),
      ],
    );
  }
}
