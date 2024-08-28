import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/secondry_button.dart';
import 'package:flutter/material.dart';

class TermsAndPolicyTexts extends StatelessWidget {
  const TermsAndPolicyTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'I agree to the ',
              style: AppStyles.textstyle12,
            ),
            SecondaryButton(
              text: 'Terms And Services',
              style: AppStyles.textstyle12.copyWith(
                  color: AppPrimaryColors.blueAccent,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Row(
          children: [
            const Text(
              'and ',
              style: AppStyles.textstyle12,
            ),
            SecondaryButton(
              text: 'Privacy Policy',
              style: AppStyles.textstyle12.copyWith(
                  color: AppPrimaryColors.blueAccent,
                  fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    );
  }
}
