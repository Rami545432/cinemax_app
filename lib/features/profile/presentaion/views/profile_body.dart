

import 'package:cinemax_app/core/utils/main_app_bar.dart';
import 'package:cinemax_app/core/utils/primary_button.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/manger/sign_in_cubit/sign_in_cubit.dart';
import 'package:cinemax_app/features/profile/presentaion/widgets/general_option.dart';
import 'package:cinemax_app/features/profile/presentaion/widgets/more_option.dart';
import 'package:cinemax_app/features/profile/presentaion/widgets/profile_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
              GoRouter.of(context).pushReplacement(Approuter.kInitialAuth);
             BlocProvider.of<SignInCubit>(context).signOut();
          
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
