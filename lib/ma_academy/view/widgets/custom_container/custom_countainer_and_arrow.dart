import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/assets_manager.dart';
import '../../../../core/values_manager.dart';

class CustomContainerAndArrow extends StatelessWidget {
  String text = "";
  CustomContainerAndArrow(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImageAssets.arrow,
          width: 10.w,
          height: 10.h,
        ),
        SizedBox(
          width: 5.w,
        ),
        Padding(
          padding: const EdgeInsets.only(top: AppPadding.p18),
          child: Container(
            color: Colors.grey[300],
            height: 10.h,
            width: 50.w,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(AppPadding.p12),
              child: Text(text),
            )),
          ),
        )
      ],
    );
  }
}
