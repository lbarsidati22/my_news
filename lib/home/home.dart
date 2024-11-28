// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_news/home/cubit/cubit/home_cubit.dart';
import 'package:my_news/home/widget/home_body.dart';
import 'package:my_news/home/widget/templet_categoary_title.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (context) => HomeCubit(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            elevation: 2,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  'News App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'US',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 15,
            child: BlocBuilder<HomeCubit, HomeState>(
              buildWhen: (previous, current) =>
                  previous.sellectedPage != current.sellectedPage,
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TempleteCategoaryTitle(
                      onTap: () => context.read<HomeCubit>().onTapButtomBar(0),
                      isSellected: state.sellectedPage == 0,
                      title: 'Music',
                      iconData: Icons.music_note,
                    ),
                    SizedBox(),
                    TempleteCategoaryTitle(
                      onTap: () => context.read<HomeCubit>().onTapButtomBar(1),
                      isSellected: state.sellectedPage == 1,
                      title: 'Sports',
                      iconData: Icons.sports_basketball,
                    ),
                  ],
                );
              },
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            // backgroundColor: Color(0xff212017),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            onPressed: () {},
            child: Icon(
              Icons.search,
            ),
          ),
          body: HomeBody(),
        );
      }),
    );
  }
}

// api key bbe42778b2a04297b21039c12c152aea
