
import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/secondry_button.dart';
import 'package:flutter/material.dart';

class EpisodeDescrepttion extends StatefulWidget {
  const EpisodeDescrepttion({super.key, required this.overview});
  final String overview;
  @override
  State<EpisodeDescrepttion> createState() => _CustomDescreptionState();
}

class _CustomDescreptionState extends State<EpisodeDescrepttion> {
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
            maxLines: isClicked ? widget.overview.length : 2,
            overflow: isClicked ? TextOverflow.ellipsis : TextOverflow.visible,
            widget.overview,
          ),
          widget.overview.length > 50
              ? SecondaryButton(
                  onTap: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                  text: isClicked ? 'Less' : 'More',
                  style: AppStyles.textstyle14.copyWith(
                      fontWeight: FontWeight.w400,
                      color: AppPrimaryColors.blueAccent),
                )
              : Text('')
        ],
      ),
    );
  }
}
