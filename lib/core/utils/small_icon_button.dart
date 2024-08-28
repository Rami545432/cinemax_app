import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SmalliconButton extends StatelessWidget {
  const SmalliconButton({
    super.key,
    this.icon,
    this.onPressed,
  });
  final Widget? icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: AppPrimaryColors.soft,
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        iconSize: 18,
        onPressed: onPressed ??
            () {
              GoRouter.of(context).pop();
            },
        icon: icon ?? const Text(''),
      ),
    );
  }
}
