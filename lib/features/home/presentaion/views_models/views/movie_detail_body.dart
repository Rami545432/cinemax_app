import 'package:flutter/material.dart';

import '../widgets/movie_details_widgets/movie_detail_bloc_builder.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MovieDetailsBlocBuilder();
  }
}
