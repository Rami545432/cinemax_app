import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InitialContent extends StatelessWidget {
  const InitialContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 55, top: 160, right: 55),
      child: Column(
        children: [
          SvgPicture.asset('assets/images/live_tv_black_24dp1.svg'),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'CINEMAX',
            style: AppStyles.textstyle28,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            textAlign: TextAlign.center,
            'Enter your registered Phone Number to Sign Up',
            style:
                AppStyles.textstyle14.copyWith(color: const Color(0xff92929D)),
          ),
        ],
      ),
    );
  }
}
