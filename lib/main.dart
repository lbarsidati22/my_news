import 'package:flutter/material.dart';
import 'package:my_news/layout/news_layout.dart';

void main() {
  runApp(const MyNews());
}

class MyNews extends StatelessWidget {
  const MyNews({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const NewsLayout(),
    );
  }
}
