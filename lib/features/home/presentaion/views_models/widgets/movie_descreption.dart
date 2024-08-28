import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/secondry_button.dart';
import 'package:flutter/material.dart';

class MovieDescreption extends StatefulWidget {
  const MovieDescreption({super.key});

  @override
  State<MovieDescreption> createState() => _MovieDescreptionState();
}

class _MovieDescreptionState extends State<MovieDescreption> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Story Line',
            style: AppStyles.textstyle16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            maxLines: isClicked ? 5 : 3,
            overflow: isClicked ? TextOverflow.ellipsis : TextOverflow.visible,
            "For the first time in the cinematic history of Spider-Man, our friendly neighborhood hero's identity is revealed, bringing his Super Hero responsibilities into conflict with his normal life and putting those he cares about most at risk",
            style: AppStyles.textstyle14.copyWith(fontWeight: FontWeight.w400),
          ),
          SecondaryButton(
            onTap: () {
              setState(() {
                isClicked = !isClicked;
              });
            },
            text: isClicked ? 'Less' : 'More',
            style: AppStyles.textstyle14.copyWith(
                fontWeight: FontWeight.w400,
                color: AppPrimaryColors.blueAccent),
          ),
        ],
      ),
    );
  }
}
