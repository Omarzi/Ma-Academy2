import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:sizer/sizer.dart';

class CustomCardCoursesTeacher extends StatelessWidget {
  final String subName;
  final String teachName;

  CustomCardCoursesTeacher(
    this.subName,
    this.teachName,
  );
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
                ),
                SizedBox(
                  height: 1.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.primary),
                    onPressed: () {},
                    child: Text("Groups"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
