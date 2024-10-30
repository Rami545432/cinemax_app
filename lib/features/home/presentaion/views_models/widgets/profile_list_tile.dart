import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/small_icon_button.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/manger/firebase_opreations_cubit/firebase_opreations_cubit.dart';
import 'package:cinemax_app/features/profile/presentaion/widgets/profile_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProfileListTile extends StatefulWidget {
  const ProfileListTile({
    super.key,
  });

  @override
  State<ProfileListTile> createState() => _ProfileListTileState();
}

class _ProfileListTileState extends State<ProfileListTile> {
  @override
  Widget build(BuildContext context) {
    final fireBaseUser = FirebaseAuth.instance;

    return ListTile(
      onTap: () {
        GoRouter.of(context).push(Approuter.kProfileView);
      },
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      title: BlocBuilder<FirebaseOpreationsCubit, FirebaseOpreationsState>(
        builder: (context, state) {
          if (state is FirebaseOpreationsSuccess) {
            return Text(
              fireBaseUser.currentUser?.displayName.toString()??'',
              style: AppStyles.textstyle16,
            );
          }
          return Text(
              fireBaseUser.currentUser?.displayName.toString()??'',
              style: AppStyles.textstyle16,
            );
        },
      ),
      leading: const ProfileImage(
        width: 54,
        height: 54,
      ),
      subtitle: const Text(
        'Let’s stream your favorite movie',
        style: AppStyles.textstyle12,
      ),
      trailing: SmalliconButton(
        onPressed: () {
          GoRouter.of(context).push(Approuter.kWishListView);
        },
        icon: const Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
    );
  }
}
