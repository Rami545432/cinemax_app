import 'package:cinemax_app/features/home/presentaion/manger/fetch_movie_details_cubit/fetch_movie_details_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/views/movie_detail_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsView extends StatefulWidget {
  const MovieDetailsView({super.key, required this.movieEntity});
  final int movieEntity;

  @override
  State<MovieDetailsView> createState() => _MovieDetailsViewState();
}

class _MovieDetailsViewState extends State<MovieDetailsView> {
  @override
  void initState() {
    BlocProvider.of<FetchMovieDetailsCubit>(context)
        .fetchMovieDetails(widget.movieEntity);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  MovieDetailsBody(),
    );
  }
}
