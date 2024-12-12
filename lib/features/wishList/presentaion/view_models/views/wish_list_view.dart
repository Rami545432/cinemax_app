import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/manger/get_favorite_cubit/get_favorites_cubit.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/views/wish_list_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishListView extends StatefulWidget {
  const WishListView({super.key});

  @override
  State<WishListView> createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView> {
  @override
  void initState() {
    final currentUser = fireBaseUser.currentUser!.uid;
    BlocProvider.of<GetFavoritesCubit>(context).getFavoriteItems(currentUser);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WishListBody(),
      ),
    );
  }
}
