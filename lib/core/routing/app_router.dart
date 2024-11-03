import 'package:cars_web/core/routing/routes.dart';
import 'package:cars_web/pages/Sell_page/sell_page.dart';
import 'package:cars_web/pages/details_cars_page/details_car_page.dart';
import 'package:cars_web/pages/buy_page/buy_page.dart';
import 'package:cars_web/pages/home_page/home_page.dart';
import 'package:cars_web/pages/login_page/login_page.dart';
import 'package:cars_web/pages/signup_page/signup_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case Routes.buyScreen:
        return MaterialPageRoute(
          builder: (_) => const BuyPage(),
        );
      // case Routes.DetailsCarPage:
      //   final Car car = arguments as Car; // Ensure arguments is of type Car
      //   return MaterialPageRoute(
      //     builder: (context) => DetailsCarPage(car: car),
      //   );
      case Routes.DetailsCarPage:
        return MaterialPageRoute(
          builder: (_) =>  DetailsCarPage(),
        );

      case Routes.sellScreen:
        return MaterialPageRoute(
          builder: (_) => const  SellPage(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const  LoginPage(),
        );

      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupPage(),
        );
      default:
        return null;
    }
  }
}
