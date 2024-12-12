import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_styles.dart';
import '../../../../domian/entites/entity.dart';

class HorizontalFilmCardDateText extends StatelessWidget {
  const HorizontalFilmCardDateText({
    super.key,
    required this.movieEntity,
  });

  final MovieEntity movieEntity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.sizeOf(context).height * 0.04,
      left: MediaQuery.sizeOf(context).width * 0.06,
      child: SizedBox(
        width: 300,
        child: Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          'On ${movieEntity.date}',
          style: AppStyles.textstyle16,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
