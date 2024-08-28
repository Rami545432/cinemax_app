import 'package:cinemax_app/core/utils/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignInTextField extends StatelessWidget {
  const SignInTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(
          hintText: 'Enter your Email',
          lable: 'Email Address',
          icon: Text(''),
        ),
        SizedBox(
          height: 32,
        ),
        CustomTextField(
          hintText: 'Enter your Password',
          lable: 'Password',
          icon: Text(''),
        ),
      ],
    );
  }
}
