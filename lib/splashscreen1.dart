import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: ColorsPallate.textcolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Gap(30),
              SvgPicture.asset(
                height: 50,
                width: double.infinity,
                'aasset/img/traffic-weather-conditions-svgrepo-com.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
