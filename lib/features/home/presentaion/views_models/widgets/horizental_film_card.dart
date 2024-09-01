import 'package:cinemax_app/features/home/presentaion/views_models/widgets/horizental_car_bloc_builder.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/smoth_indicator_card.dart';
import 'package:flutter/material.dart';

class HorzintalFilmCard extends StatefulWidget {
  const HorzintalFilmCard({super.key});

  @override
  State<HorzintalFilmCard> createState() => _HorzintalFilmCardState();
}

class _HorzintalFilmCardState extends State<HorzintalFilmCard> {
  final PageController _pageController = PageController(viewportFraction: 0.9);
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HorizintalFilmCardBlocBuilder(pageController: _pageController),
        SmothIndicatorHomeCards(pageController: _pageController),
      ],
    );
  }
}
