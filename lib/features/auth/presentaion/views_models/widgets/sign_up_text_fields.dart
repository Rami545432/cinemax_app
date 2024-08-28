import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/custom_text_field.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/widgets/pirvacy_policy_texts.dart';
import 'package:flutter/material.dart';

class SignUpTextFields extends StatefulWidget {
  const SignUpTextFields({super.key});

  @override
  State<SignUpTextFields> createState() => _SignUpTextFieldsState();
}

class _SignUpTextFieldsState extends State<SignUpTextFields> {
  bool isVisiable = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          hintText: 'Enter your name',
          lable: 'Full name',
          icon: Text(''),
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomTextField(
          hintText: 'Enter your email',
          lable: 'Email address',
          icon: Text(''),
        ),
        const SizedBox(
          height: 24,
        ),
        CustomTextField(
          hintText: 'Enter Your Password',
          lable: 'Password',
          obscureText: isVisiable ? false : true,
          icon: isVisiable
              ? const Icon(Icons.visibility_rounded)
              : const Icon(Icons.visibility_off),
          onPressed: () {
            setState(
              () {
                isVisiable = !isVisiable;
              },
            );
          },
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              checkColor: Colors.white,
              activeColor: AppPrimaryColors.blueAccent,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            const TermsAndPolicyTexts()
          ],
        ),
      ],
    );
  }
}
