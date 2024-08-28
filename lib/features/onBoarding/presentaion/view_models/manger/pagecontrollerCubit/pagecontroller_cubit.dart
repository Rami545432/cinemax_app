import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'pagecontroller_state.dart';

class PagecontrollerCubit extends Cubit<PagecontrollerState> {
  final PageController pageController;

  PagecontrollerCubit(this.pageController)
      : super(PagecontrollerState(pageController: pageController));

  @override
  Future<void> close() async {
    pageController.dispose();
    return super.close();
  }
}
