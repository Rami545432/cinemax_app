import 'package:cinemax_app/features/auth/presentaion/views_models/views/new_password_body.dart';
import 'package:flutter/material.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NewPasswordBody(),
      ),
    );
  }
}
