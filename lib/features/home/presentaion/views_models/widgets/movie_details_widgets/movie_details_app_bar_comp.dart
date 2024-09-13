import 'package:cinemax_app/features/home/domian/entites/movie_details_entity.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_details_widgets/movie_detail_app_bar.dart';
import 'package:flutter/widgets.dart';

class MovieDetaisAppBarComp extends StatelessWidget {
  const MovieDetaisAppBarComp({
    super.key,
    required this.movieDetailsEntity,
  });

  final MovieDetailsEntity movieDetailsEntity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            MovieDetailsAppbar(
              movieEntity: movieDetailsEntity,
            ),
          ]),
    );
  }
}
