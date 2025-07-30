import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/presetation/screens/home/home_screen.dart';
import 'package:todo_app/presetation/screens/splash/splash_screen.dart';

class RoutesManager {
  static const String splashRoute = '/splash';
  static const String homeRoute = '/home';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case splashRoute:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
    }
  }
}
