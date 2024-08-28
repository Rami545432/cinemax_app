import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PrimaryTexts extends StatelessWidget {
  const PrimaryTexts({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.textstyle24,
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppStyles.textstyle12.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
