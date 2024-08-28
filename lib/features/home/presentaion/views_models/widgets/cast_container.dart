import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/film_cast_info.dart';
import 'package:flutter/material.dart';

class CastContainer extends StatelessWidget {
  const CastContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Cast And Crew',
            style: AppStyles.textstyle16,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 60,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: FilmCastInfo(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
