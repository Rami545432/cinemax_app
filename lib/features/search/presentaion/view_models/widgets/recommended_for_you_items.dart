import 'package:cinemax_app/core/utils/sub_bar.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_film_card_list_view.dart';
import 'package:flutter/material.dart';

class RecommendedForYouItems extends StatelessWidget {
  const RecommendedForYouItems({
    super.key,
    required this.movieEntity,
  });
  final List<MovieEntity> movieEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SubBar(
            title: 'Recommended to you',
            textbutton: '',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SearchCardListView(
          movies: movieEntity,
        ),
      ],
    );
  }
}
