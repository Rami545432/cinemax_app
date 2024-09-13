import 'package:cinemax_app/core/utils/cubits/gener_cubit.dart';
import 'package:cinemax_app/core/utils/functions/hive_initial.dart';
import 'package:cinemax_app/core/utils/get_it.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/functions/statues_bar.dart';
import 'core/utils/go_router.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await hiveInitialize();
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setStatuesBarColor();

  serviceLocator();

  Bloc.observer = SimpleBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GenerCubit(),
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
