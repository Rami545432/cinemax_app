import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/search_box.dart';
import 'package:cinemax_app/core/utils/sub_bar.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/popular_bloc_builder_tv_show.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/tv_categoies_sections.dart';
import 'package:cinemax_app/features/seires/presentaion/widgets/tv_horizental_film_card.dart';
import 'package:flutter/material.dart';



class SeriesViewBody extends StatelessWidget {
  const SeriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(
          height: 40,
        ),
        Center(
          child: Text(
            'Tv Series',
            style: AppStyles.textstyle18,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SearchBox(),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SubBar(title: 'Trending', textbutton: ''),
        ),
        TvHorzintalFilmCard(),
        SizedBox(height: 40,),
        TvCategoiesSections(),
         SizedBox(
          height: 32,
        ),
        TvPopularMoivesBlocBuilder()
        
      ],
    );
  }
}
