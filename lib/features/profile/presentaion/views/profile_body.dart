
import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:cinemax_app/core/utils/primary_button.dart';
import 'package:cinemax_app/features/profile/presentaion/widgets/general_option.dart';
import 'package:cinemax_app/features/profile/presentaion/widgets/more_option.dart';
import 'package:cinemax_app/features/profile/presentaion/widgets/profile_container.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/manger/get_favorite_cubit/get_favorites_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../core/utils/go_router.dart';
import '../widgets/account_options.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          const MainAppBar(title: 'Profile'),
          const SizedBox(
            height: 24,
          ),
          const ProfileContainer(),
          const SizedBox(
            height: 24,
          ),
          const AccountOptions(),
          const SizedBox(
            height: 24,
          ),
          const GeneralOption(),
          const SizedBox(
            height: 20,
          ),
          const MoreOptions(),
          const SizedBox(
            height: 40,
          ),
          PrimaryButton(
            text: 'Log out',
            onTap: () async {
              BlocProvider.of<GetFavoritesCubit>(context).clearCache();
           
              GoRouter.of(context).pushReplacement(Approuter.kInitialAuth);

              await FirebaseAuth.instance.signOut();
              await GoogleSignIn().signOut();
              await FacebookAuth.instance.logOut();
              // ignore: use_build_context_synchronously
            },
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
