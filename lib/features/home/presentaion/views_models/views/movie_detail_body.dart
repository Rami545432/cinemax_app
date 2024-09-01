import 'package:cinemax_app/features/home/domian/entites/entity.dart';
import 'package:cinemax_app/features/home/presentaion/manger/fetch_movie_details_cubit/fetch_movie_details_cubit.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_data_and_sharing.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_details_app_bar_comp.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/cast_container.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_descreption.dart';
import 'package:cinemax_app/features/home/presentaion/views_models/widgets/movie_details_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieDetailsBody extends StatelessWidget {
  const MovieDetailsBody({super.key, required this.movieEntity});
  final MovieEntity movieEntity;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchMovieDetailsCubit, FetchMovieDetailsState>(
      builder: (context, state) {
        if (state is FetchMovieDetailsSuccess) {
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              Stack(
                children: [
                  MovieDetaisAppBarComp(movieEntity: movieEntity),
                  MoiveDetailsImage(movieEntity: movieEntity),
                  MovieDataAndSharing(
                      movieEntity: movieEntity,
                      movieDetailsEntity: state.movies[0]),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              MovieDescreption(
                movieDetailsEntity: state.movies[0],
              ),
              const SizedBox(
                height: 24,
              ),
              CastContainer(
                movieDetailsEntity: state.movies[0],
              )
            ],
          );
        }
        if (state is FetchMovieDetailsFauilure) {
          Text(state.errorMessage);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
