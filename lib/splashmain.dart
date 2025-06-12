import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:tms_project/colors.dart';
import 'package:tms_project/route.dart';

class SplashMainScreen extends StatefulWidget {
  const SplashMainScreen({super.key});

  @override
  State<SplashMainScreen> createState() => _SplashMainScreenState();
}

class _SplashMainScreenState extends State<SplashMainScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 20), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushNamed(RouteManager.c);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPallate.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText(
                    'TRAFFIC MANAGEMENT SYSTEM',
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Montserrat',
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                pause: Duration(seconds: 1),
                isRepeatingAnimation: true,
              ),
              Text(
                'Leveraging Technology in the Traffic System',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
