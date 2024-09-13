import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/cubits/gener_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../../constant.dart';
import '../../../domian/entites/entity.dart';
import '../../manger/fetch_popular_movie_cubit/fetch_popular_movies_cubit.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenerCubit, int>(builder: (context, selectedIndex) {
      return Row(
        children: [
          for (int i = 0; i < buttonTexts.length; i++)
            GestureDetector(
              onTap: () async {
                context.read<GenerCubit>().selectGenre(i);
                await Hive.box<MovieEntity>(popularBox).clear();
                // ignore: use_build_context_synchronously
                await BlocProvider.of<FetchPopularMoviesCubit>(context)
                    .fetchPopularMovie(
                  getGenreId(
                    buttonTexts[i],
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: i == selectedIndex
                      ? AppPrimaryColors.soft
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                height: 33,
                width: 100,
                child: Center(
                  child: Text(
                    softWrap: false,
                    textAlign: TextAlign.center,
                    buttonTexts[i],
                    style: TextStyle(
                        color: i == selectedIndex
                            ? AppPrimaryColors.blueAccent
                            : Colors.white),
                  ),
                ),
              ),
            ),
        ],
      );
    });
  }
}
