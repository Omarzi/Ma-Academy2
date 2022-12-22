// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/font_manager.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:sizer/sizer.dart';

class CheckScreen extends StatelessWidget {
  static const String routeName = 'checkScreen';
  const CheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(7.h),
        child: CustomAppBar(
          title: Text(
            "Welcome at Ma Acadeny",
            style: TextStyle(
              fontSize: FontSize.s20,
              fontWeight: FontWeightManager.w700,
              color: ColorManager.whiteColor,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 3.h),
            SizedBox(
              width: 300.w,
              height: 30.h,
              child: Image.asset(ImageAssets.splashLogo),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'loginScreen');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFff5757),
                  minimumSize: const Size.fromHeight(50),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.2.w,
                    vertical: 0.8.h,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.w600,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'chooseTurn');
                },
                style: ElevatedButton.styleFrom(
                  // backgroundColor: const Color.fromARGB(255, 83, 198, 179),
                  backgroundColor: const Color(0xFFff5757),
                  minimumSize: const Size.fromHeight(50),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.w600,
                    color: ColorManager.whiteColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "VisitorType");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFff5757),
                  minimumSize: const Size.fromHeight(50),
                ),
                child: Text(
                  'Visitor',
                  style: TextStyle(
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.w600,
                    color: ColorManager.whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
