import 'dart:developer';

import 'package:cinemax_app/core/utils/functions/show_snack_bar.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/manger/social_media_sign_up_cubit/social_media_sign_up_cubit.dart';
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
    return BlocListener<SocialMediaSignUpCubit, SocialMediaSignUpState>(
      listener: (context, state) {
        if (state is SocialMediaSignUpSuccess) {
          GoRouter.of(context).pushReplacement(Approuter.kNavigationView);
          showSnackBar(context, color: Colors.greenAccent, text: 'YEeeey');
        }
        if (state is SocialMediaSignUpFailure) {
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
                await BlocProvider.of<SocialMediaSignUpCubit>(context)
                    .signInWithGoolge();
              },
              child: SvgPicture.asset('assets/images/Google.svg')),
          SvgPicture.asset('assets/images/Apple.svg'),
          GestureDetector(
              onTap: () async {
                await BlocProvider.of<SocialMediaSignUpCubit>(context)
                    .signInWithFacebook();
              },
              child: SvgPicture.asset('assets/images/Facebook.svg')),
        ],
      ),
    );
  }
}
