import 'package:bloc/bloc.dart';
import 'package:cinemax_app/core/utils/functions/hive_initial.dart';
import 'package:cinemax_app/core/utils/get_it.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/functions/statues_bar.dart';
import 'core/utils/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
    return MaterialApp.router(
      routerConfig: Approuter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppPrimaryColors.dark,
        appBarTheme: AppBarTheme(color: AppPrimaryColors.dark),
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
