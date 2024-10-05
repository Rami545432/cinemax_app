import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TrailerButton extends StatelessWidget {
  const TrailerButton({
    super.key,
    this.onTap,
  });
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 115,
        height: 55,
        decoration: BoxDecoration(
          color: AppPrimaryColors.blueAccent,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
            Text(
              'Watch',
              style: AppStyles.textstyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
