import 'package:cinemax_app/features/search/presentaion/view_models/views/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: NoSearchViewBody(),
      ),
    );
  }
}
