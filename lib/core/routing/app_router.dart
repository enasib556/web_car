import 'package:cars_web/core/routing/routes.dart';
import 'package:cars_web/pages/buy_page/buy_page.dart';
import 'package:cars_web/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case Routes.buyScreen:
        return MaterialPageRoute(
          builder: (_) =>  BuyPage(),
        );
      default:
        return null;
    }
  }
}