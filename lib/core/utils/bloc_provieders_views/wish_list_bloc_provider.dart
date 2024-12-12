import 'package:cinemax_app/features/wishList/domain/use_cases/delete_wish_case_use_case.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/manger/delete_wish_list_cubit/delete_wish_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/wishList/data/repos/wish_list_repo_impl.dart';
import '../../../features/wishList/presentaion/view_models/views/wish_list_view.dart';
import '../get_it.dart';

class WishListBlocProvider extends StatelessWidget {
  const WishListBlocProvider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => GetFavoritesCubit(
        //     GetFavoritesUseCase(
        //       wishListRepo: getIt.get<WishListRepoImpl>(),
        //     ),
        //   ),
        // ),
        BlocProvider(
          create: (context) => DeleteWishListCubit(
            DeleteWishCaseUseCase(
              wishListRepo: getIt.get<WishListRepoImpl>(),
            ),
          ),
        ),
      ],
      child: WishListView(),
    );
  }
}
