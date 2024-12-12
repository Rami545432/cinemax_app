import 'package:cinemax_app/features/home/presentaion/views_models/views/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
