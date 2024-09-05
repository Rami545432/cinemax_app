import 'dart:ui';

import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, this.movieEntity, this.movieDetailsEntity});
  final MovieEntity? movieEntity;
  final MovieDetailsEntity? movieDetailsEntity;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: SizedBox(
          height: 24,
          width: MediaQuery.of(context).size.width * 0.15,
          child: Row(
            children: [
              const Icon(
                Icons.star,
                color: Colors.orange,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                movieEntity?.rating.toStringAsFixed(1) ?? '4.5',
                style: const TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
