import 'dart:developer';

import 'package:cinemax_app/core/utils/functions/show_snack_bar.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/manger/google_sign_in_cubit/google_sign_in_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignUpMethods extends StatelessWidget {
  const SignUpMethods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthSignUpCubit, AuthSignUpState>(
      listener: (context, state) {
        if (state is AuthSignUpSuccess) {
          GoRouter.of(context).pushReplacement(Approuter.kNavigationView);
          showSnackBar(context, color: Colors.greenAccent, text: 'YEeeey');
        }
        if (state is AuthSignUpFailure) {
          log(state.errorMessage);
          showSnackBar(context,
              color: Colors.greenAccent, text: state.errorMessage);
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () async {
                await BlocProvider.of<AuthSignUpCubit>(context)
                    .signInWithGoolge();
              },
              child: SvgPicture.asset('assets/images/Google.svg')),
          SvgPicture.asset('assets/images/Apple.svg'),
          GestureDetector(
              onTap: () async {
                await BlocProvider.of<AuthSignUpCubit>(context)
                    .signInWithFacebook();
              },
              child: SvgPicture.asset('assets/images/Facebook.svg')),
        ],
      ),
    );
  }
}
