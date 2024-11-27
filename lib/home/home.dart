// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_news/home/widget/templet_categoary_title.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TempleteCategoaryTitle(
              onTap: () {},
              isSellected: false,
              title: 'Music',
              iconData: Icons.music_note,
            ),
            SizedBox(),
            TempleteCategoaryTitle(
              onTap: () {},
              isSellected: true,
              title: 'Sports',
              iconData: Icons.sports_basketball,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
    );
  }
}

// api key bbe42778b2a04297b21039c12c152aea
