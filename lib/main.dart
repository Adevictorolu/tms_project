import 'package:flutter/material.dart';
import 'package:propel_project/route.dart';
import 'package:propel_project/splashmain.dart';
import 'package:propel_project/splashscreen1.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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