import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SubBar extends StatelessWidget {
  const SubBar(
      {super.key,
      required this.title,
      required this.textbutton,
      this.onPressed});
  final String title, textbutton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          title,
          style: AppStyles.textstyle16,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            textbutton,
            style: AppStyles.textstyle14.copyWith(
              color: AppPrimaryColors.blueAccent,
            ),
          ),
        ),
      ],
    );
  }
}
