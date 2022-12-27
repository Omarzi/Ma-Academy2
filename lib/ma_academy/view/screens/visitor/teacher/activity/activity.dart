import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_button/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../core/font_manager.dart';
import '../../../../widgets/custom_app_bar/custom_app_bar.dart';

class ActivityScreenVisitorTeacher extends StatelessWidget {
  const ActivityScreenVisitorTeacher({Key? key}) : super(key: key);

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
            'Add Activity',
            style: TextStyle(fontSize: 18, fontWeight: FontWeightManager.w700),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You must first to be able to add new activities",
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p20),
              child: CustomButton(
                  onPressd: () {
                    Navigator.pushNamed(context, "loginScreen");
                  },
                  text: "Join us",
                  color: Colors.white,
                  bgColor: ColorManager.primary),
            )
          ],
        ),
      ),
    );
  }
}
