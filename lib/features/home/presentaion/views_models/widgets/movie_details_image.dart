import 'package:cached_network_image/cached_network_image.dart';
import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:flutter/widgets.dart';

class MoiveDetailsImage extends StatelessWidget {
  const MoiveDetailsImage({
    super.key,
    required this.movieEntity,
  });

  final MovieEntity movieEntity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 108,
      right: 85,
      left: 85,
      child: CachedNetworkImage(
        height: 287,
        width: 205,
        imageUrl: '$baseImageUrl${movieEntity.image}',
      ),
    );
  }
}