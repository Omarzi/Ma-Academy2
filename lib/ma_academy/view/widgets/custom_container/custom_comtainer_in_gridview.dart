import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomContainerInGridView extends StatelessWidget {
  Function function;
  String image;
  String text;
  CustomContainerInGridView(
      {required this.function, required this.image, required this.text});
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shadowColor: Colors.grey,
        elevation: 2.sp,
        child: Column(
          children: [
            Image.asset(
              image,
              width: 10.w,
              height: 8.h,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
