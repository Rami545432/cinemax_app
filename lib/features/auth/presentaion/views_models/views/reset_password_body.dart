import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/custom_text_field.dart';
import 'package:cinemax_app/core/utils/functions/show_snack_bar.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:cinemax_app/core/utils/primary_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordBody extends StatefulWidget {
  const ResetPasswordBody({super.key});

  @override
  State<ResetPasswordBody> createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  TextEditingController emailContoller = TextEditingController();
  @override
  void dispose() {
    emailContoller.dispose();
    super.dispose();
  }

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
          CustomTextField(
              controller: emailContoller,
              hintText: 'Enter your Email',
              lable: 'Email Password'),
          const SizedBox(
            height: 40,
          ),
          PrimaryButton(
            text: 'Next',
            onTap: () async {
              try {
                await FirebaseAuth.instance
                    .sendPasswordResetEmail(email: emailContoller.text);
                // ignore: use_build_context_synchronously
                GoRouter.of(context).pushReplacement(
                    Approuter.kVerficationPasswordEmailView,
                    extra: emailContoller.text);
              } on FirebaseAuthException catch (e) {
                if (e.code == 'channel-error') {
                  // ignore: use_build_context_synchronously
                  showSnackBar(context,
                      color: Colors.red, text: 'Please Enter Your Email');
                }
              }
            },
          )
        ],
      ),
    );
  }
}
