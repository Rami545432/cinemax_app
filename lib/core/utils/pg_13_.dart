import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PGContainer extends StatelessWidget {
  const PGContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 20,
      decoration: BoxDecoration(
          border: Border.all(color: AppPrimaryColors.blueAccent),
          borderRadius: BorderRadius.circular(3),
          color: Colors.transparent),
      child: Text(
        'PG-13',
        style:
            AppStyles.textstyle12.copyWith(color: AppPrimaryColors.blueAccent),
        textAlign: TextAlign.center,
      ),
    );
  }
}
