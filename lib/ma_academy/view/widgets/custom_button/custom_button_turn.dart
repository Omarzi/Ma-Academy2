import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/font_manager.dart';

class CustomButtonTurn extends StatelessWidget {
  final String text;
  final String image;
  final double height;
  final double weidth;
  CustomButtonTurn(
      {required this.text,
      required this.image,
      required this.height,
      required this.weidth});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          height: 12.h,
          width: 70.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.sp),
              color: ColorManager.primary),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 30.w,
          top: 1.h,
          child: Image.asset(
            image,
            height: height.h,
            width: weidth.w,
          ),
        ),
      ],
    );
  }
}
