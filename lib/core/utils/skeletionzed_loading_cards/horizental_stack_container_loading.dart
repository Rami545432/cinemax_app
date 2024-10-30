import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HorzientalStackContainerLoading extends StatelessWidget {
  const HorzientalStackContainerLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 154,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      Positioned(
        bottom: MediaQuery.of(context).size.height * 0.08,
        left: MediaQuery.of(context).size.width * 0.06,
        child: SizedBox(
          width: 300,
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            'seriesEntity!.tvName',
            style: AppStyles.textstyle16,
            textAlign: TextAlign.left,
          ),
        ),
      ),
      Positioned(
        bottom: MediaQuery.of(context).size.height * 0.04,
        left: MediaQuery.of(context).size.width * 0.06,
        child: SizedBox(
          width: 300,
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            'On {seriesEntity!.tvFirstAirDate}',
            style: AppStyles.textstyle16,
            textAlign: TextAlign.start,
          ),
        ),
      ),
    ]);
  }
}
