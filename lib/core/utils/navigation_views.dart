import 'package:cinemax_app/features/profile/presentaion/views/profile_view.dart';
import 'package:cinemax_app/features/wishList/presentaion/view_models/views/wish_list_view.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import 'app_colors.dart';
import 'bloc_provieders_views/home_view_provieder.dart';
import 'bloc_provieders_views/seires_tv_shows_providers.dart';

class NavigationViews extends StatefulWidget {
  const NavigationViews({super.key});

  @override
  State<NavigationViews> createState() => _NavigationViewsState();
}

class _NavigationViewsState extends State<NavigationViews> {
  int selectedIndex = 0;
  List<Widget> body = const [
    HomeViewProviders(),
    WishListView(),
    SeiresTvShowsProviders(),
    ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[selectedIndex],
      bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.transparent,
          backgroundColor: AppPrimaryColors.dark,
          onDestinationSelected: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedIndex: selectedIndex,
          destinations: [
            for (int i = 0; i < selectedIcons.length; i++)
              NavigationDestination(
                  selectedIcon: selectedIcons[i],
                  icon: icons[i],
                  label: naviLables[i]),
          ]),
    );
  }
}
