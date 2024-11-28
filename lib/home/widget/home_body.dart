import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_news/home/cubit/cubit/home_cubit.dart';
import 'package:my_news/home/home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => false,
      builder: (context, state) {
        return PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: state.pageController,
          itemCount: state.pagesItem.length,
          onPageChanged: (value) =>
              context.read<HomeCubit>().onTapButtomBar(value),
          itemBuilder: (context, index) => state.pagesItem.elementAt(index),
        );
      },
    );
  }
}
