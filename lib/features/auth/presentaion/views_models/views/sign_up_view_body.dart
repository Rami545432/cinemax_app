import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:cinemax_app/core/utils/primary_button.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/manger/sign_up_cubit/sign_up_cubit.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/widgets/sign_up_text_fields.dart';
import 'package:cinemax_app/core/utils/primary_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}



class _SignUpViewBodyState extends State<SignUpViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children:  const [
          MainAppBar(
            title: 'Sign Up',
          ),
          SizedBox(
            height: 40,
          ),
          PrimaryTexts(
            title: "Let’s get started",
            subtitle: 'The latest movies and series are here',
          ),
          SizedBox(
            height: 90,
          ),
          SignUpTextFields(),
          
        ],
      ),
    );
  }
}
