import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:sizer/sizer.dart';

class CistomContainerScheduleTeacher extends StatelessWidget {
  const CistomContainerScheduleTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p8, horizontal: AppPadding.p20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  ImageAssets.splashLogo,
                  height: 15.h,
                  width: 15.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Event Starts in",
                        style: TextStyle(
                            fontSize: 12.sp, color: ColorManager.primary),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "Added",
                        style: TextStyle(
                            fontSize: 12.sp, color: ColorManager.primary),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
