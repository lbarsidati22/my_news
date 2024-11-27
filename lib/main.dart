import 'package:flutter/material.dart';
import 'package:my_news/config/root/on_genirate.dart';
import 'package:my_news/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const Home(),
      // onGenerateRoute: OnGenirateRoot.onGenerateRoute,
    );
  }
}
