import 'package:cinemax_app/core/utils/cubits/gener_cubit.dart';
import 'package:cinemax_app/core/utils/functions/hive_initial.dart';
import 'package:cinemax_app/core/utils/get_it.dart';
import 'package:cinemax_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/update_email_use_case.dart';
import 'package:cinemax_app/features/auth/domain/use_cases/update_name_use_case.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/manger/firebase_opreations_cubit/firebase_opreations_cubit.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/cubits/tv_gener_cubit/gener_tv_cubit.dart';
import 'core/utils/functions/statues_bar.dart';
import 'core/utils/go_router.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await hiveInitialize();
  runApp(const MyApp());

  setStatuesBarColor();

  serviceLocator();

  Bloc.observer = SimpleBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
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
      child: MaterialApp.router(
        routerConfig: Approuter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppPrimaryColors.dark,
          appBarTheme: AppBarTheme(color: AppPrimaryColors.dark),
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
