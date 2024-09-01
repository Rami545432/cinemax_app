import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/row_category_buttons.dart';
import 'package:cinemax_app/core/utils/sub_bar.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/film_search_result_card.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_film_card_list_view.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class NoSearchViewBody extends StatelessWidget {
  const NoSearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      child: ListView(
        children: const [
          SearchTextField(),
          SizedBox(
            height: 24,
          ),
          RowCategoryButton(),
          SizedBox(
            height: 24,
          ),
          Text(
            'Today',
            style: AppStyles.textstyle16,
          ),
          SizedBox(
            height: 16,
          ),
          FilmSearchResultCard(),
          SizedBox(
            height: 95,
          ),
          SubBar(title: 'Recommended to you', textbutton: 'See All'),
          SizedBox(
            height: 16,
          ),
          SearchCardListView(),
        ],
      ),
    );
  }
}
