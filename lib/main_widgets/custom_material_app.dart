import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/utils/app_colors.dart';
import '../core/utils/go_router.dart';

class CustomMaterialApp extends StatelessWidget {
  const CustomMaterialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
      routerConfig: Approuter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        
        scaffoldBackgroundColor: AppPrimaryColors.dark,
        appBarTheme: AppBarTheme(color: AppPrimaryColors.dark),
        textTheme:
            GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
