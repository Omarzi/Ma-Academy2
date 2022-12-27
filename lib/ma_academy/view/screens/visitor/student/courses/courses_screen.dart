import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_container/custom_countainer_and_arrow.dart';
import 'package:sizer/sizer.dart';

import '../../../../widgets/custom_button/custom_button_join_us.dart';
import '../../../../widgets/custom_container/custom_card_courses.dart';

class CoursesScreen extends StatelessWidget {
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
            'Courses',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: AppPadding.p12, left: AppPadding.p8, right: AppPadding.p8),
          child: Column(
            children: [
              CustomCardCourses("Math Course", "Mr .Mohamed Ali", Colors.green),
              CustomCardCourses("Math Course", "Mr .Khaled Adel", Colors.red),
              SizedBox(
                height: 10.h,
              ),
              CustomContainerAndArrow("You can your Courses here"),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  CustomButtonJoiinUs(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
