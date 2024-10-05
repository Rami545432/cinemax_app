import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/app_styles.dart';
import 'container_profile_frame.dart';
import 'profile_option_container.dart';

class AccountOptions extends StatelessWidget {
  const AccountOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> account = ['Member', 'Change Password'];
    List<IconData> accountIcons = [
      FontAwesomeIcons.user,
      FontAwesomeIcons.lock
    ];
    return ContainerProfileFrame(
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 23, right: 18),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Account',
                  style: AppStyles.textstyle18,
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            for (int i = 0; i < account.length; i++) ...[
              ProfileOptionContainer(
                text: account[i],
                icon: accountIcons[i],
              ),
              if (i < account.length - 1) const SizedBox(height: 25),
            ],
          ],
        ),
      ),
    );
  }
}
