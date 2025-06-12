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
    Future.delayed(Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.of(context).pushNamed(RouteManager.b);
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
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Traffic Management App',
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 2000),
                ),
              ],

              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ],
        ),
      ),
    );
  }
}
