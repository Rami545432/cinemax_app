import 'package:cinemax_app/core/utils/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignInTextField extends StatelessWidget {
  const SignInTextField(
      {super.key,
      required this.globalKey,
      required this.emailContoller,
      required this.passwordController});
  final GlobalKey<FormState> globalKey;
  final TextEditingController emailContoller;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Enter your Email',
            lable: 'Email Address',
            controller: emailContoller,
            onFieldSubmitted: (data) {
              emailContoller.text = data!;
            },
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            hintText: 'Enter your Password',
            lable: 'Password',
            controller: passwordController,
            onFieldSubmitted: (p0) {
              passwordController.text = p0!;
            },
          ),
        ],
      ),
    );
  }
}
