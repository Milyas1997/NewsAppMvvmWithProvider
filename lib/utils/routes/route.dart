import 'package:flutter/material.dart';
import 'package:providermvvmwithapi/utils/routes/route_name.dart';
import 'package:providermvvmwithapi/view_model/home_screen.dart';
import 'package:providermvvmwithapi/view_model/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashScreen());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(child: Text('No route defined')),
          );
        });
    }
  }
}
