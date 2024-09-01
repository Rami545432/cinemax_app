import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget primaryPhoto() {
  return SvgPicture.asset('assets/images/live_tv_black_24dp1.svg');
}

List<String> buttonTexts = [
  'All',
  'Comedy',
  'Animation',
  'Documentary',
];

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    log(change.toString());
  }

  @override
  void onClose(BlocBase bloc) {
    log('closed  $bloc');
  }

  @override
  void onCreate(BlocBase bloc) {
    log('created  $bloc');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}

  @override
  void onEvent(Bloc bloc, Object? event) {}

  @override
  void onTransition(Bloc bloc, Transition transition) {}
}

const movieDetailtBox = 'detweeasaw';
const popularBox = 'popularbosso';
const newsetBox = 'newst';
const baseImageUrl = 'https://image.tmdb.org/t/p/w500/';
String getGenreName(int id) {
  switch (id) {
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