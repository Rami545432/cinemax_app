import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:flutter/material.dart';

class HorzientalStackContainer extends StatelessWidget {
  const HorzientalStackContainer({
    super.key, required this.movieEntity,
  });
final MovieEntity movieEntity;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.all(10),
        height: 154,
        decoration: BoxDecoration(
          image:  DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage('$baseImageUrl${movieEntity.horizentalImage}'),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      Positioned(
        bottom: MediaQuery.of(context).size.height * 0.08,
        left: MediaQuery.of(context).size.width * 0.06,
        child:  SizedBox(
          width: 300,
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            movieEntity.moviTtitle,
            style: AppStyles.textstyle16,
            textAlign: TextAlign.left,
          ),
        ),
      ),
      Positioned(
        bottom: MediaQuery.of(context).size.height * 0.04,
        left: MediaQuery.of(context).size.width * 0.06,
        child:  SizedBox(
          width: 300,
          child: Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            'On ${movieEntity.date}',
            style: AppStyles.textstyle16,
            textAlign: TextAlign.start,
          ),
        ),
      ),
    ]);
  }
}
