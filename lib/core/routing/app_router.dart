import 'package:cars_web/core/models/carDetails.dart'; // Ensure this path is correct
import 'package:cars_web/core/routing/routes.dart';
import 'package:cars_web/pages/details_cars_page/details_car_page.dart';
import 'package:cars_web/pages/buy_page/buy_page.dart';
import 'package:cars_web/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
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
      default:
        return null;
    }
  }
}
