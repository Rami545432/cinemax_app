import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:flutter/services.dart';

void setStatuesBarColor() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppPrimaryColors.dark, //status bar color
  ));
}
