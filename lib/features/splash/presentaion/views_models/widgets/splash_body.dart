import 'package:cinemax_app/constant.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

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
          Text(
            'CINEMAX',
            style: AppStyles.textstyle28
                .copyWith(color: AppPrimaryColors.blueAccent),
          )
        ],
      ),
    );
  }
}
