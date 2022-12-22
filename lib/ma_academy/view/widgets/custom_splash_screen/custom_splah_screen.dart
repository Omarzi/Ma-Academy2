// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomSplashScreen extends StatefulWidget {
  const CustomSplashScreen({super.key});

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    Timer(
      const Duration(seconds: 5),
      () => Navigator.pushNamedAndRemoveUntil(context, 'checkScreen', (route) => false)
          );
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 6.h),
            FadeTransition(
              opacity: fadingAnimation!,
              child: Container(
                width: 90.w,
                height: 70.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageAssets.splashLogo),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: LinearPercentIndicator(
                animation: true,
                lineHeight: 7.0,
                animationDuration: 2500,
                percent: 1,
                barRadius: const Radius.circular(50),
                progressColor: ColorManager.primary,
                onAnimationEnd: () {
                  // ignore: todo
                  /// TODO : check user access token
                  Navigator.pushNamedAndRemoveUntil(
                      context, 'checkScreen', (route) => false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
