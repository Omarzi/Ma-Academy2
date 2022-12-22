import 'package:flutter/material.dart';
import 'package:ma_academy/core/font_manager.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_button/custom_button_turn.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/assets_manager.dart';
import '../../../widgets/custom_app_bar/custom_app_bar.dart';

class Choose_turn extends StatefulWidget {
  static const String routeName = 'chooseTurn';

  @override
  State<Choose_turn> createState() => _Choose_turnState();
}

class _Choose_turnState extends State<Choose_turn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(7.h),
        child: CustomAppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text(''),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
          child: Column(
            children: [
              SizedBox(
                width: 300.w,
                height: 30.h,
                child: Image.asset(
                  ImageAssets.splashLogo,
                ),
              ),
              Text(
                " Your turn !",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: FontSize.s20),
              ),
              SizedBox(
                height: 7.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'RegisterScreen');
                },
                child: CustomButtonTurn(
                  height: 12,
                  weidth: 57,
                  image: ImageAssets.teacher,
                  text: "Teacher",
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'RegisterScreen');
                },
                child: CustomButtonTurn(
                  height: 12,
                  weidth: 50,
                  image: ImageAssets.parent,
                  text: "Parent",
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'RegisterScreen');
                },
                child: CustomButtonTurn(
                  height: 11,
                  weidth: 60,
                  image: ImageAssets.student,
                  text: "Student",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
