import 'package:cinemax_app/features/home/presentaion/views_models/widgets/film_card_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/go_router.dart';
import '../../../../../core/utils/sub_bar.dart';
import '../../../domian/entites/entity.dart';

class MostPopularComponets extends StatelessWidget {
  const MostPopularComponets({
    super.key,
    required this.movies,
  });
  final List<MovieEntity> movies;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: SubBar(
              onPressed: () async {
                await Hive.box<MovieEntity>(popularBox).clear();
                // ignore: use_build_context_synchronously
                GoRouter.of(context).push(
                  Approuter.kSeeAllView,
                );
              },
              title: 'Most popular',
              textbutton: 'See All',
            )),
        const SizedBox(
          height: 16,
        ),
        FilmCardListView(
          movieEntity: movies,
        ),
      ],
    );
  }
}
