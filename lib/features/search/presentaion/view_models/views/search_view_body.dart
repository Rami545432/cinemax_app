import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/secondry_button.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_bloc_builder.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/widgets/search_movies_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 24,
        ),
        const SearchTextField(),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SecondaryButton(
            onTap: () {
              GoRouter.of(context).push(Approuter.kActorSearchView);
            },
            text: 'Search By Actor',
            style: TextStyle(color: AppPrimaryColors.blueAccent),
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        const SearchBlocBuilder()
      ],
    );
  }
}
