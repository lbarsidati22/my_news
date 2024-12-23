import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_news/layout/cubit/news_state.dart';
import 'package:my_news/pages/business_page.dart';
import 'package:my_news/pages/science_page.dart';
import 'package:my_news/pages/sports_page.dart';
import 'package:my_news/shared/dio_helper.dart';

class NewsCubit extends Cubit<NewsState> {
  final String apiKey = 'bbe42778b2a04297b21039c12c152aea';
  NewsCubit() : super(NewsInitialState());
  int curentIndex = 0;
  void changNavBar(int index) {
    curentIndex = index;
    emit(NewsNavBarState());
  }

  List<Widget> pages = [
    BusinessPage(),
    SportsPage(),
    SciencePage(),
  ];
  List<dynamic> business = [];
  void getBusiness() {
    emit(GetBesunessLeadingState());
    DioHelper.getData(
      url: 'top-headlines',
      quiry: {
        'country': 'us',
        'category': 'business',
        'apiKey': 'bbe42778b2a04297b21039c12c152aea',
      },
    ).then((onValue) {
      business = onValue.data['articles'];
      debugPrint(business[0]['title']);
      emit(GetBesunessSuccsessState());
    }).catchError((onError) {
      print(onError.toString());
      emit(GetBesunessErrorState());
    });
  }
}
