import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/small_icon_button.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key, required this.title, this.onPressed, this.icon});
  final String title;
  final VoidCallback? onPressed;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SmalliconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: AppStyles.textstyle16,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          IconButton(
            onPressed: onPressed,
            icon: icon ?? const Text(''),
          ),
        ],
      ),
    );
  }
}
