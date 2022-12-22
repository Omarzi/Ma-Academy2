// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ma_academy/core/font_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:ma_academy/core/color_manager.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressd;
  final String text;
  final Color color;
  final Color bgColor;

  const CustomButton({super.key, required this.onPressd, required this.text, required this.color, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressd,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        minimumSize: const Size.fromHeight(50),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 3.2.w,
          vertical: 0.8.h,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: FontSize.s16,
            fontWeight: FontWeightManager.w600,
            color: color,
          ),
        ),
      ),
    );
  }
}
