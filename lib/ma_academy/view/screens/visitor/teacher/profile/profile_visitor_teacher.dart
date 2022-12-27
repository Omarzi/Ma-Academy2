import 'package:flutter/material.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/font_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:ma_academy/ma_academy/view/screens/visitor/student/calender/calender.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_container/custom_countainer_and_arrow.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_list_tile/custom_list_tile.dart';
import 'package:sizer/sizer.dart';

class ProfilScreenVisitorTeacher extends StatelessWidget {
  static const String routName = "ProfilScreenVisitorTeacher";

  const ProfilScreenVisitorTeacher({super.key});

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
          action: [
            Padding(
              padding: const EdgeInsets.only(
                  right: AppPadding.p8, left: AppPadding.p8),
              child: Icon(Icons.notifications),
            )
          ],
          title: const Text(
            'More',
            style: TextStyle(fontSize: 18, fontWeight: FontWeightManager.w700),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  ImageAssets.profile,
                  width: 40.w,
                  height: 17.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Visitor",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeightManager.w700,
                          color: ColorManager.primary),
                    ),
                  ],
                )
              ],
            ),
            CustomListTile(
              title: "Resources Mangement",
              onPressd: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Calender()));
              },
            ),
            Divider(
              thickness: 0.5.sp,
              color: ColorManager.lightGrey,
            ),
            CustomListTile(
              title: "Assistant",
              onPressd: () {},
            ),
            Divider(
              thickness: 1.sp,
              color: ColorManager.lightGrey,
            ),
            CustomListTile(
              title: "Subject groups",
              onPressd: () {},
            ),
            Divider(
              thickness: 1.sp,
              color: ColorManager.lightGrey,
            ),
            CustomListTile(
              title: "Question Bank",
              onPressd: () {},
            ),
            Divider(
              thickness: 1.sp,
              color: ColorManager.lightGrey,
            ),
            SizedBox(
              height: 2.h,
            ),
            CustomContainerAndArrow(
                "Here you can see your profile and other features,loginFirst")
          ],
        ),
      ),
    );
  }
}
