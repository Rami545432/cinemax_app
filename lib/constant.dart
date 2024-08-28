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

const popularBox = 'popularbox';
const newsetBox = 'newstbox21t';
const baseImageUrl='https://image.tmdb.org/t/p/w500/';
