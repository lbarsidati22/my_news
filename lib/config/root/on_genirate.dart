import 'package:flutter/material.dart';
import 'package:my_news/config/root/app_root.dart';
import 'package:my_news/home/home.dart';

class OnGenirateRoot {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoot.home:
        return MaterialPageRoute(builder: (context) => const Home());
    }
    return null;
  }
}
