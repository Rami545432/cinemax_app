import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/small_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      title: const Text(
        'Hello, Smith',
        style: AppStyles.textstyle16,
      ),
      leading: Image.asset('assets/images/Avatar.png'),
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
