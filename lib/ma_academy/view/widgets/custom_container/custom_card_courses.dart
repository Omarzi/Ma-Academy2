import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/font_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:sizer/sizer.dart';

class CustomCardCourses extends StatelessWidget {
  final String subName;
  final Color color;
  final String teachName;

  CustomCardCourses(this.subName, this.teachName, this.color);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.sp,
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Row(
          children: [
            Image.asset(
              ImageAssets.splashLogo,
              height: 20.h,
              width: 30.w,
            ),
            Column(
              children: [
                Text(
                  subName,
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  teachName,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.grey),
                )
              ],
            ),
            SizedBox(
              width: 10.w,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 3.sp,
                  backgroundColor: color,
                ),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  "Active",
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeightManager.w400,
                      color: color),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
