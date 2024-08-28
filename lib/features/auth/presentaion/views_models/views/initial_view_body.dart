import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/horizental_seprator.dart';
import 'package:cinemax_app/core/utils/primary_button.dart';
import 'package:cinemax_app/core/utils/text_button_row.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/widgets/initial_content.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/widgets/sign_up_methods.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitialAuthViewBody extends StatelessWidget {
  const InitialAuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const InitialContent(),
          const SizedBox(
            height: 34,
          ),
          PrimaryButton(
            text: 'Sign up',
            onTap: () {
              GoRouter.of(context).push(Approuter.kSignUpView);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const TextAndButtonRow(
            text: 'I already have an account?',
            buttonText: 'Login',
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HorizentalSeprator(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Or Sign up with ',
                  style: AppStyles.textstyle14.copyWith(
                      color: const Color.fromARGB(255, 128, 128, 137)),
                ),
              ),
              const HorizentalSeprator()
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const SignUpMethods(),
        ],
      ),
    );
  }
}
