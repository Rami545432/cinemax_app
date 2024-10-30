import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class EpisodeInfoColumn extends StatelessWidget {
  const EpisodeInfoColumn({
    super.key, required this.episodeName, required this.episodeDuration, required this.episodeNumber,
  });
final String episodeName;
final num episodeDuration,episodeNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 120,
          child: Text(
           
            episodeName,
            style: AppStyles.textstyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
         Text(
          "${episodeDuration.toString()} Min",
          style: AppStyles.textstyle12,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Episode $episodeNumber',
          style: AppStyles.textstyle14.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
