import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final Widget? icon;
  final Function() onPressd;
  CustomListTile({required this.title, this.icon, required this.onPressd});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
      onTap: onPressd,
    );
  }
}
