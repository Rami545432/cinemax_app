import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'core/utils/app_colors.dart';

Widget primaryPhoto() {
  return SvgPicture.asset('assets/images/live_tv_black_24dp1.svg');
}

const String defaultProfileImage =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq2k2sI1nZyFTtoaKSXxeVzmAwIPchF4tjwg&s';

List<String> buttonTexts = [
  'All',
  'Comedy',
  'Animation',
  'History',
  'Family',
  'Drama',
];

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log(change.toString());
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log('closed  $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('created  $bloc');
  }
}

const recommendedTvBox = 'recommendedTvBox';
const popularTvBox = 'popularTvBox';
const trendingTvBox = 'trendingTvBox';
const topRatedBox = 'topRatedBox';

const recommendedBox = 'recommendedBox';
const trendBox = 'trendBox';
const movieDetailtBox = 'detweeasaw';
const popularBox = 'popularsdasdbosadsaasdaso';
const newsetBox = 'newst';
const baseImageUrl = 'https://image.tmdb.org/t/p/w500/';
String getGenreName(int id) {
  switch (id) {
    case 10768:
      return "War & Politics";
     case 10767:
      return "Talk";
    case 10763:
      return "News";
      case 10762:
      return "Kids";
      case 10766:
      return "Soap";
    case 10765:
      return "Sci-Fi & Fantasy";
    case 10764:
      return "Reality";
    case 28:
      return "Action";
    case 12:
      return "Adventure";
    case 16:
      return "Animation";
    case 35:
      return "Comedy";
    case 80:
      return "Crime";
    case 99:
      return "Documentary";
    case 18:
      return "Drama";
    case 10751:
      return "Family";
    case 14:
      return "Fantasy";
    case 36:
      return "History";
    case 27:
      return "Horror";
    case 10402:
      return "Music";
    case 9648:
      return "Mystery";
    case 10749:
      return "Romance";
    case 878:
      return "Science Fiction";
    case 10770:
      return "TV Movie";
    case 53:
      return "Thriller";
    case 10752:
      return "War";
    case 37:
      return "Western";
    default:
      return "Unknown Genre";
  }
}

dynamic getGenreId(String genre) {
  switch (genre) {
    case "All":
      return '';
    case "Action":
      return 28;
    case "Adventure":
      return 12;
    case "Animation":
      return 16;
    case "Comedy":
      return 35;
    case "Crime":
      return 80;
    case "Documentary":
      return 99;
    case "Drama":
      return 18;
    case "Family":
      return 10751;
    case "Fantasy":
      return 14;
    case "History":
      return 36;
    case "Horror":
      return 27;
    case "Music":
      return 10402;
    case "Mystery":
      return 9648;
    case "Romance":
      return 10749;
    case "Science Fiction":
      return 878;
    case "TV Movie":
      return 10770;
    case "Thriller":
      return 53;
    case "War":
      return 10752;
    case "Western":
      return 37;
    default:
      return -1; // Unknown Genre
  }
}

final fireBaseUser = FirebaseAuth.instance;

List<String> lables = ['Full name', 'Email', 'Phone Number'];
List<String> naviLables = ['Home', 'Favorite', 'Tv Series', 'Profile'];
List<Widget> icons = const [
  Icon(Icons.home),
  Icon(Icons.favorite),
  Icon(Icons.live_tv_rounded),
  Icon(Icons.person),
];
List<Widget> selectedIcons = [
  Icon(
    Icons.home,
    color: AppPrimaryColors.blueAccent,
  ),
  const Icon(
    Icons.favorite,
    color: Colors.redAccent,
  ),
  Icon(
    Icons.live_tv_rounded,
    color: AppPrimaryColors.blueAccent,
  ),
  Icon(
    Icons.person,
    color: AppPrimaryColors.blueAccent,
  )
];
