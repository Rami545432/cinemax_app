import 'package:cinemax_app/features/home/presentaion/views_models/widgets/categoty_section.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/popular_movies_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:cinemax_app/core/utils/search_box.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/horizental_film_card.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/profile_list_tile.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
        SizedBox(height: 8),
        ProfileListTile(),
        SizedBox(
          height: 32,
        ),
        SearchBox(),
        SizedBox(
          height: 24,
        ),
        HorzintalFilmCard(),
        SizedBox(
          height: 24,
        ),
        CategoriesSections(),
        SizedBox(
          height: 32,
        ),
        PopularMoivesBlocBuilder(),
      ],
    );
  }
}
