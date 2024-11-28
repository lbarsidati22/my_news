import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:my_news/home/conponants/music/music.dart';
import 'package:my_news/home/conponants/sports/sports.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(HomeState(
          pagesItem: const [
            Music(),
            Sports(),
          ],
          pageController: PageController(),
        ));

  void onTapButtomBar(int index) {
    emit(
      state.copyWith(
        sellectedPage: index,
      ),
    );
    state.pageController.jumpToPage(index);
  }
}
