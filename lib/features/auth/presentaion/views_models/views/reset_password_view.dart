import 'package:cinemax_app/features/auth/presentaion/views_models/views/reset_password_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ResetPasswordBody(),
      ),
    );
  }
}
