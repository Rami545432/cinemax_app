import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/features/onBoarding/presentaion/view_models/manger/pagecontrollerCubit/pagecontroller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title, subtitle, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: AppPrimaryColors.soft),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: AppStyles.textstyle18,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: AppStyles.textstyle14.copyWith(
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<PagecontrollerCubit>(context)
                    .pageController
                    .nextPage(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.linear);
              },
              child: Image.asset(image),
            )
          ],
        ),
      ),
    );
  }
}
