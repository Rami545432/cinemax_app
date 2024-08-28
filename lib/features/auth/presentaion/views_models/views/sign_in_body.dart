import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:cinemax_app/core/utils/primary_button.dart';
import 'package:cinemax_app/core/utils/secondry_button.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/widgets/sign_in_text_field.dart';
import 'package:cinemax_app/core/utils/primary_texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          const MainAppBar(title: 'Login'),
          const SizedBox(
            height: 40,
          ),
          const PrimaryTexts(
              title: 'Hi , Tiffany',
              subtitle: 'Welcome back! Please enter your details.'),
          const SizedBox(
            height: 64,
          ),
          const SignInTextField(),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SecondaryButton(
                text: 'Forgot Password ?',
                onTap: () {
                  GoRouter.of(context).push(Approuter.kResetPasswordView);
                },
                style: AppStyles.textstyle12.copyWith(
                    color: AppPrimaryColors.blueAccent,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          PrimaryButton(
            text: 'Log in',
            onTap: () {
              GoRouter.of(context).push(Approuter.kHomeview);
            },
          ),
        ],
      ),
    );
  }
}
