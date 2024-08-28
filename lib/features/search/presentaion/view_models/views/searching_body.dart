import 'package:cinemax_app/features/search/presentaion/view_models/widgets/film_search_result_card.dart';
import 'package:flutter/material.dart';

class SearchingViewBody extends StatelessWidget {
  const SearchingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2000,
      width: 400,
      child: Expanded(
        child: ListView.builder(itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: FilmSearchResultCard(),
          );
        }),
      ),
    );
  }
}
