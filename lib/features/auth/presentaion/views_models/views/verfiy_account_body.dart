import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:cinemax_app/core/utils/text_button_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/primary_button.dart';
import '../widgets/verfication_row.dart';

class VerifyAccountBody extends StatelessWidget {
  const VerifyAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const MainAppBar(title: ''),
          const SizedBox(
            height: 40,
          ),
          const Text(
            textAlign: TextAlign.center,
            'Verifying your account',
            style: AppStyles.textstyle24,
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 270,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: 'We have just sent you 4 digit code via your email',
                  style: AppStyles.textstyle14.copyWith(
                    color: const Color(0xff7F7E83),
                  ),
                ),
                const TextSpan(
                    text: ' example@gmail.com', style: AppStyles.textstyle14),
              ]),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const VerficationRow(),
          const SizedBox(
            height: 64,
          ),
          PrimaryButton(
            text: 'Continue ',
            onTap: () {
              GoRouter.of(context).push(Approuter.kNewPasswordView);
            },
          ),
          const SizedBox(
            height: 42,
          ),
          const TextAndButtonRow(
              text: 'Didn’t receive code?', buttonText: 'Resend')
        ],
      ),
    );
  }
}
