import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OpacityDeatailMovieImage extends StatelessWidget {
  const OpacityDeatailMovieImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xff1F1D2B).withOpacity(0.57),
            const Color(0xff1F1D2B),
          ],
        ),
      ),
      child: Opacity(
        opacity: 0.2,
        child: CachedNetworkImage(
            fit: BoxFit.cover,
            imageUrl:
                'https://image.tmdb.org/t/p/w500//m2zXTuNPkywdYLyWlVyJZW2QOJH.jpg'),
      ),
    );
  }
}
