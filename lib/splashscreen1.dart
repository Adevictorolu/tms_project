import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tms_project/colors.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Skip',
                  style: TextStyle(
                    color: ColorsPallate.textcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Gap(30),
            Image.asset(
              'asset/img/Wavy_Tsp-05_Single-02.jpg',
              height: 500,
              width: 100,
              cacheHeight: 500,
              cacheWidth: 100,
            ),
          ],
        ),
      ),
    );
  }
}
