import 'dart:ui';

import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key, required this.rating});

  final num rating;
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
                rating.toStringAsFixed(1),
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
