import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/cubits/gener_cubit.dart';
import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/icon_text_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeeAllMovieGener extends StatelessWidget {
  const SeeAllMovieGener({
    super.key,
    required this.movieEntity,
  });
  final MovieEntity movieEntity;
  @override
  Widget build(BuildContext context) {
    final selectedIndex = BlocProvider.of<GenerCubit>(context).state;
    final generButtonText = buttonTexts[selectedIndex];

    return Row(
      children: [
        IconTextRow(
          iconData: Icons.theaters,
          text: generButtonText == 'All'
              ? getGenreName(movieEntity.gener[0])
              : generButtonText,
        ),
      ],
    );
  }
}
