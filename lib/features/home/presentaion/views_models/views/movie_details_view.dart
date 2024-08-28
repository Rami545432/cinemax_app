import 'package:cinemax_app/features/home/presentaion/views_models/views/movie_detail_body.dart';
import 'package:flutter/material.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MovieDetailsBody(),
    );
  }
}
