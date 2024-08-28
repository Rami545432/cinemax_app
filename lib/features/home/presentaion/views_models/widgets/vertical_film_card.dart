import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerticalFilmCard extends StatelessWidget {
  const VerticalFilmCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approuter.kDetailView);
      },
      child: Column(
        children: [
          const Stack(
            children: [
              Image(
                image: AssetImage('assets/images/SpiderMan.png'),
                width: 135,
                height: 178,
              ),
              Positioned(
                left: 75,
                top: 10,
                child: Rating(),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(color: AppPrimaryColors.soft),
            width: 135,
            height: 56,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Spider-Man No..',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.textstyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'Action',
                    style: AppStyles.textstyle12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
