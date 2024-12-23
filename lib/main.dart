import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_news/layout/cubit/news_cubit.dart';
import 'package:my_news/layout/news_layout.dart';
import 'package:my_news/shared/bloc_observer.dart';
import 'package:my_news/shared/dio_helper.dart';

void main() {
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyNews());
}

class MyNews extends StatelessWidget {
  const MyNews({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getBusiness(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: NewsLayout(),
      ),
    );
  }
}
