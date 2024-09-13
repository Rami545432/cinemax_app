import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/category_button.dart';
import 'package:flutter/material.dart';

class CategoriesSections extends StatelessWidget {
  const CategoriesSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Categories', style: AppStyles.textstyle16),
            ],
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: CategoryButton(),
          ),
        )
      ],
    );
  }
}
