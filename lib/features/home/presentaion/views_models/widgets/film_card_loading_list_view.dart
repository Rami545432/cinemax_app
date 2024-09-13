import 'package:cinemax_app/features/home/presentaion/views_models/widgets/vertical_film_card_loading.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FilmCardListViewLoading extends StatelessWidget {
  const FilmCardListViewLoading({
    super.key,
  
  });
  

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: SizedBox(
        height: 235,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 12),
              child: VerticalFilmCardLoading(),
            );
          },
        ),
      ),
    );
  }
}
