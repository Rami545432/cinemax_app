import 'dart:developer';

import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/manger/add_wish_list_cubit/add_wish_list_cubit.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/manger/delete_wish_list_cubit/delete_wish_list_cubit.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/manger/get_favorite_cubit/get_favorites_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton(
      {super.key,
      required this.movieId,
      required this.title,
      required this.imageUrl,
      required this.gener,
      required this.type});
  final String title, imageUrl, gener, type;
  final int movieId;

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isSelected = false;
  @override
  void initState() {
    BlocProvider.of<GetFavoritesCubit>(context).getFavoriteItems(fireBaseUser.currentUser!.uid);
    _isSelected = BlocProvider.of<GetFavoritesCubit>(context)
        .isItemoFavorite(widget.movieId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(_isSelected.toString());

    return BlocBuilder<GetFavoritesCubit, GetFavoritesState>(
      builder: (context, state) {
        if (state is GetFavoritesFailure) {
          return Text(state.errorMessage);
        }
        if (state is GetFavoritesSuccess) {
          return IconButton(
            onPressed: () {
              setState(() {
                _isSelected = !_isSelected;
                if (_isSelected == true) {
                  BlocProvider.of<AddWishListCubit>(context).addWish(
                      widget.movieId,
                      widget.title,
                      widget.imageUrl,
                      widget.gener,
                      widget.type,
                      fireBaseUser.currentUser!.uid);
                } else {
                  BlocProvider.of<DeleteWishListCubit>(context)
                      .deleteWish(widget.movieId);
                }
              });
            },
            icon: Icon(
              Icons.favorite,
              color: _isSelected ? Colors.red : Colors.white,
            ),
          );
        }
        return Center(
            child: CircularProgressIndicator(
          color: AppPrimaryColors.blueAccent,
        ));
      },
    );
  }
}
