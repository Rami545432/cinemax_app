import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton(
      {super.key, this.icon, required this.color, this.size, this.onPressed});
  final IconData? icon;
  final Color color;
  final double? size;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: AppPrimaryColors.soft,
        borderRadius: BorderRadius.circular(32),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
