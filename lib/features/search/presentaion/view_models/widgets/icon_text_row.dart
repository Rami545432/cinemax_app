import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  const IconTextRow({
    super.key,
    required this.text,
    required this.iconData,
  });
  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: Colors.grey,
          size: 16,
        ),
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          width: 75,
          child: Text(
            text,
            style: AppStyles.textstyle12,
          ),
        ),
      ],
    );
  }
}
