import 'package:flutter/material.dart';
import 'package:propel_project/main.dart';
import 'package:propel_project/splashmain.dart';
import 'package:propel_project/splashscreen1.dart';

class RouteManager {
  static String a = '/';
  static String b = '/b';
  static String c = '/c';
  static String d = '/d';
  static String e = '/e';

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) {
            return Homepage();
          },
        );
      case '/b':
        return MaterialPageRoute(
          builder: (context) {
            return SplashMainScreen();
          },
        );
      case '/c':
        return MaterialPageRoute(
          builder: (context) {
            return SplashScreen1();
          },
        );
      default:
        throw MaterialPageRoute(
          builder: (context) {
            return SplashMainScreen();
          },
        );
    }
  }
}
