import 'package:cinemax_app/features/auth/presentaion/views_models/views/sign_in_body.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SignInBody(),
      ),
    );
  }
}
