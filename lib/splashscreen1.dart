import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:propel_project/colors.dart';

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
              Gap(20),
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
                height: 350,
                width: double.infinity,
                'assets/img/Wavy_Tsp-05_Single-02.jpg',
              ),
              Gap(10),
              Text(
                'Get real time notification on traffic condition',
                style: TextStyle(
                  color: ColorsPallate.backgroundColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gap(3),
              Text(
                'Get the best possible traffic reports in your area\nuse TMS to make good travel descisions',
                style: TextStyle(
                  color: ColorsPallate.textcolor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(6),
              // ignore: deprecated_member_use
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    'assets/img/pavigation.svg',
                    color: ColorsPallate.backgroundColor,
                  ),
                  Gap(8),
                  FloatingActionButton.small(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    onPressed: () {},
                    backgroundColor: ColorsPallate.backgroundColor,
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
