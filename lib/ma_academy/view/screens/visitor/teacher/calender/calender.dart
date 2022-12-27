import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/font_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:sizer/sizer.dart';

import '../../../../widgets/custom_Calender.dart';
import '../../../../widgets/custom_app_bar/custom_app_bar.dart';
import '../../../../widgets/custom_container/custom_container_scedule_teacher.dart';

class CalenderVisitorTeacher extends StatefulWidget {
  @override
  State<CalenderVisitorTeacher> createState() => _CalenderState();
}

class _CalenderState extends State<CalenderVisitorTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(7.h),
          child: CustomAppBar(
            leading: Icon(
              Icons.arrow_back,
              color: ColorManager.primary,
            ),
            title: const Text(
              'Calender',
              style:
                  TextStyle(fontSize: 18, fontWeight: FontWeightManager.w700),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCalender(),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "30-12-2022",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeightManager.w700,
                      color: ColorManager.primary),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "09:00",
                  style: TextStyle(fontSize: 12.sp, color: ColorManager.grey),
                ),
                CistomContainerScheduleTeacher(),
                CistomContainerScheduleTeacher()
              ],
            ),
          ),
        ));
  }
}
