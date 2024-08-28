import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/custom_text_field.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:cinemax_app/core/utils/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const MainAppBar(title: ''),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Reset Password',
            style: AppStyles.textstyle28,
          ),
          const SizedBox(
            height: 7,
          ),
          Text('Recover your account password',
              style: AppStyles.textstyle14.copyWith(color: Colors.grey)),
          const SizedBox(
            height: 48,
          ),
          const CustomTextField(
              icon: Text(''),
              hintText: 'Enter your Email',
              lable: 'Email Password'),
          const SizedBox(
            height: 40,
          ),
          PrimaryButton(
            text: 'Next',
            onTap: () {
              GoRouter.of(context).push(Approuter.kVerficationView);
            },
          )
        ],
      ),
    );
  }
}
