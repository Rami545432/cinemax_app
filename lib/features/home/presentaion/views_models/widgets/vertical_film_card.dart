import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/app_styles.dart';
import 'package:cinemax_app/core/utils/cubits/gener_cubit.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/rating.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class VerticalFilmCard extends StatelessWidget {
  const VerticalFilmCard({super.key, required this.movieEntity,});
  final MovieEntity movieEntity;

  @override
  Widget build(BuildContext context) {
    final generButtonText =
        buttonTexts[BlocProvider.of<GenerCubit>(context).state];
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approuter.kDetailView,extra: movieEntity.movieId);
      },
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image(
                  image: NetworkImage('$baseImageUrl${movieEntity.image}'),
                  width: 135,
                  height: 178,
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.185,
                top: 10,
                child: Rating(
                  movieEntity: movieEntity,
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: AppPrimaryColors.soft,
              borderRadius: BorderRadius.circular(6),
            ),
            width: MediaQuery.of(context).size.width * 0.33,
            height: 56,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieEntity.moviTtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.textstyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    generButtonText == 'All'
                        ? getGenreName(movieEntity.gener[0])
                        : generButtonText,
                    style: AppStyles.textstyle12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
