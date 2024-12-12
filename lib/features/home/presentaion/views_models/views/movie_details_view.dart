import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_movie_details_cubit/fetch_movie_details_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/views/movie_detail_body.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/manger/get_favorite_cubit/get_favorites_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsView extends StatefulWidget {
  const MovieDetailsView({super.key, required this.movieId});
  final int movieId;

  @override
  State<MovieDetailsView> createState() => _MovieDetailsViewState();
}

class _MovieDetailsViewState extends State<MovieDetailsView> {
  @override
  void initState() {
    User user = fireBaseUser.currentUser!;
    BlocProvider.of<FetchMovieDetailsCubit>(context)
        .fetchMovieDetails(widget.movieId);
    super.initState();
    BlocProvider.of<GetFavoritesCubit>(context).getFavoriteItems(user.uid);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MovieDetailsBody(),
    );
  }
}
