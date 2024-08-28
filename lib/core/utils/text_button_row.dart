import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/secondry_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TextAndButtonRow extends StatelessWidget {
  const TextAndButtonRow({
    super.key,
    required this.text,
    required this.buttonText,
    this.onTap,
  });
  final String text, buttonText;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppStyles.textstyle16
              .copyWith(fontFamily: 'Poppins', color: Colors.grey),
        ),
        SecondaryButton(
          onTap: () {
            GoRouter.of(context).push(Approuter.kSignInView);
          },
          text: buttonText,
          style: AppStyles.textstyle16
              .copyWith(color: AppPrimaryColors.blueAccent),
        ),
      ],
    );
  }
}
