import 'package:cinemax_app/features/auth/presentaion/views_models/views/verfiy_account_body.dart';
import 'package:flutter/material.dart';

class VerifyAccountView extends StatelessWidget {
  const VerifyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: VerifyAccountBody(),
    ));
  }
}
