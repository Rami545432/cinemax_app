import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'recommended_for_you_bloc_builder.dart';
import 'trending_bloc_builder.dart';

class SearchDefaultComponets extends StatelessWidget {
  const SearchDefaultComponets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 87,
              ),
              Text(
                'Today',
                style: AppStyles.textstyle16,
              ),
              SizedBox(
                height: 16,
              ),
              TrendingBlocBuilder(),
              SizedBox(
                height: 95,
              ),
            ],
          ),
        ),
        RecommendedForYouBlocBuilder(),
      ],
    );
  }
}
