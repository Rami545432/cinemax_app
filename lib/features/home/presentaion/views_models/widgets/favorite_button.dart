import 'package:cinemax_app/features/wishList/presentaion/view_models/manger/addwishlist/addwishlist_cubit.dart';
// ignore: unused_import
import 'package:cinemax_app/features/wishList/presentaion/view_models/models/wish_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddwishlistCubit(),
      child: Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            setState(() {
              _isSelected = !_isSelected;
            });
          },
          icon: Icon(
            Icons.favorite,
            color: _isSelected ? Colors.red : Colors.white,
          ),
        );
      }),
    );
  }
}
