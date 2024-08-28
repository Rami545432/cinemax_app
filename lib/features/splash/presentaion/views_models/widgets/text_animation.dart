import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_colors.dart';

class TextAnimation extends StatelessWidget {
  const TextAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
        totalRepeatCount: 1,
        onFinished: () {
          GoRouter.of(context).replace(Approuter.kOnBoarding1);
        },
        animatedTexts: [
          TyperAnimatedText(
            speed: const Duration(milliseconds: 250),
            'CINEMAX',
            curve: Curves.slowMiddle,
            textStyle: AppStyles.textstyle28
                .copyWith(color: AppPrimaryColors.blueAccent),
          ),
        ]);
  }
}
