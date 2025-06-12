import 'package:flutter/material.dart';
import 'package:tms_project/route.dart';
import 'package:tms_project/splashmain.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RouteManager.a,
      onGenerateRoute: RouteManager.generateRoute,
      title: 'Traffic Management System',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat',
      ),
      home: SplashMainScreen()
    );
  }
}