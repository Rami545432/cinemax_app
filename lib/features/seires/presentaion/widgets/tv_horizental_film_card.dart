import 'package:cinemax_app/features/home/presentaion/views_models/widgets/smoth_indicator_card.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/tv_horizental_film_card_bloc_builder.dart';
import 'package:flutter/material.dart';

class TvHorzintalFilmCard extends StatefulWidget {
  const TvHorzintalFilmCard({super.key});

  @override
  State<TvHorzintalFilmCard> createState() => _TvHorzintalFilmCardState();
}

class _TvHorzintalFilmCardState extends State<TvHorzintalFilmCard> {
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
        TvHorizentalFilmCardBlocBuilder(pageController: _pageController),
        SmothIndicatorHomeCards(pageController: _pageController),
      ],
    );
  }
}
