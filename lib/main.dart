import 'package:cinemax_app/core/utils/functions/hive_initial.dart';
import 'package:cinemax_app/core/utils/get_it.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'constant.dart';
import 'core/utils/functions/statues_bar.dart';
import 'firebase_options.dart';
import 'main_widgets/main_multi_bloc_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await hiveInitialize();
  runApp(
    MyApp(),
  );

  setStatuesBarColor();

  serviceLocator();

  Bloc.observer = SimpleBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MainMultiProvieders();
  }
}
