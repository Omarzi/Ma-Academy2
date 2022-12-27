import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:ma_academy/ma_academy/view/screens/visitor/teacher/home/search.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_button/custom_button_join_us.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_container/custom_grid_view.dart';
import 'package:sizer/sizer.dart';

import '../../../../widgets/custom_container/custom_card_bage_view.dart';

class HomeScreen extends StatefulWidget {
  final theme = ThemeMode.dark;
  static const String routName = "HomeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  var mini = false;
  var selectedfABLocation = FloatingActionButtonLocation.endDocked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        icon: Icons.headset_mic_sharp,
        backgroundColor: ColorManager.primary,
        activeBackgroundColor: ColorManager.primary,
        activeIcon: Icons.headset_mic_sharp,
        spacing: 3,
        mini: mini,
        childPadding: const EdgeInsets.all(5),
        spaceBetweenChildren: 4,
        shape: StadiumBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.whatsapp),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            onTap: () {},
          ),
          SpeedDialChild(
            child: const Icon(Icons.message),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            onTap: () {},
          ),
          SpeedDialChild(
            child: Icon(Icons.call),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            visible: true,
            onTap: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: AppPadding.p12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: AppPadding.p20),
                      child: Text(
                        "My Academy",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: ColorManager.primary),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.sp),
                          color: Colors.grey[100]),
                      child: Padding(
                        padding: const EdgeInsets.all(AppPadding.p12),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Search()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.search),
                                  Text(
                                    "Search...",
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 1.w,
                              ),
                              Icon(Icons.list_sharp)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(AppPadding.p8),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcom at My Academy",
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500,
                                      color: ColorManager.primary),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "if you don't register",
                                      style: TextStyle(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    CustomButtonJoiinUs(),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Image.asset(
                              ImageAssets.splashLogo,
                              width: 20.w,
                              height: 11.h,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            customCardBageView(),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: Text(
                "Features",
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade600),
              ),
            ),
            CustomGridView(),
          ],
        ),
      ),
    );
  }
}
