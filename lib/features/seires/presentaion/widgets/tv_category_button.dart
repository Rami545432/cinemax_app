import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/features/seires/presentaion/manger/fetch_popular_tv_shows_cubit/fetch_popular_tv_shows_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../../../constant.dart';
import '../../../../core/utils/cubits/tv_gener_cubit/gener_tv_cubit.dart';


class TvCategoryButton extends StatelessWidget {
  const TvCategoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenerTvCubit, int>(builder: (context, selectedIndex) {
      return Row(
        children: [
          for (int i = 0; i < buttonTexts.length; i++)
            GestureDetector(
              onTap: () async {
                context.read<GenerTvCubit>().selectTvGener(i);
             
                // ignore: use_build_context_synchronously
                await BlocProvider.of<FetchPopularTvShowsCubit>(context)
                    .fetchPopularTvShows(
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
