import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/features/splash/presentaion/views_models/widgets/splash_body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      _checkUserLoggedIn();
    });

    super.initState();
  }

  void _checkUserLoggedIn() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        GoRouter.of(context).push(Approuter.kNavigationView);
      } else {
        GoRouter.of(context).push(Approuter.kOnBoarding1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SplashBody(),
      ),
    );
  }
}
