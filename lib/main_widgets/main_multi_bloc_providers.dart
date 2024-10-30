import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/utils/cubits/gener_cubit.dart';
import '../core/utils/cubits/tv_gener_cubit/gener_tv_cubit.dart';
import '../core/utils/get_it.dart';
import '../features/auth/data/repos/auth_repo_impl.dart';
import '../features/auth/domain/use_cases/update_email_use_case.dart';
import '../features/auth/domain/use_cases/update_name_use_case.dart';
import '../features/auth/presentaion/views_models/manger/firebase_opreations_cubit/firebase_opreations_cubit.dart';
import '../features/seires/data/repos/series_repo_impl.dart';
import '../features/seires/domain/use_cases/fetch_series_season_details.dart';
import '../features/seires/presentaion/manger/fetch_series_season_details_cubit/fetch_series_season_details_cubit.dart';
import 'custom_material_app.dart';

class MainMultiProvieders extends StatelessWidget {
  const MainMultiProvieders({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchSeriesSeasonDetailsCubit(
            FetchSeriesSeasonDetailsUseCase(
              seriesRepo: getIt.get<SeriesRepoImpl>(),
            ),
          ),
        ),
        BlocProvider(
          create: (context) => GenerCubit(),
        ),
        BlocProvider(
          create: (context) => GenerTvCubit(),
        ),
        BlocProvider(
          create: (context) => FirebaseOpreationsCubit(
            updateNameUseCase: UpdateNameUseCase(
              authRepo: AuthRepoImpl(),
            ),
            updateEmailUseCase: UpdateEmailUseCase(
              authRepo: AuthRepoImpl(),
            ),
          ),
        ),
      ],
      child: CustomMaterialApp(),
    );
  }
}

