import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_container/custom_card_courses_teacher.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_container/custom_countainer_and_arrow.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/font_manager.dart';
import '../../../../widgets/custom_app_bar/custom_app_bar.dart';

class CoursesVisitorTeacher extends StatelessWidget {
  const CoursesVisitorTeacher({Key? key}) : super(key: key);

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
            style: TextStyle(fontSize: 18, fontWeight: FontWeightManager.w700),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorManager.primary,
        mini: true,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCardCoursesTeacher("Math", "Seventh Grage"),
            CustomCardCoursesTeacher("Math", "Seventh Grage"),
            CustomContainerAndArrow("View all activities of this subject")
          ],
        ),
      ),
    );
  }
}
