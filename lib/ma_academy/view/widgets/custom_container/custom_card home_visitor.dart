import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:sizer/sizer.dart';

class CustomCardHomeVisitor extends StatelessWidget {
  const CustomCardHomeVisitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 27.sp,
            backgroundImage: AssetImage(ImageAssets.teacher),
          ),
          SizedBox(
            width: 2.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Free Math Work \nShop",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: ColorManager.primary,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Mr.Ahmed Ali",
                style: TextStyle(
                  fontSize: 11.sp,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Nasr city,Egypt",
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
