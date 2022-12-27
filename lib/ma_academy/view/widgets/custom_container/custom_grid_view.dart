import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:sizer/sizer.dart';

import 'custom_comtainer_in_gridview.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(AppPadding.p8),
        crossAxisSpacing: 2.w,
        mainAxisSpacing: 1.h,
        crossAxisCount: 3,
        children: <Widget>[
          CustomContainerInGridView(
              function: () {},
              image: "${ImageAssets.book}",
              text: "Manege your\nsubjects"),
          CustomContainerInGridView(
              function: () {},
              image: "${ImageAssets.schedule}",
              text: "schedule your\nevent"),
          CustomContainerInGridView(
              function: () {},
              image: "${ImageAssets.groubs}",
              text: "Create your\ngroups"),
          CustomContainerInGridView(
              function: () {},
              image: "${ImageAssets.student}",
              text: "Add your\nstudents"),
          CustomContainerInGridView(
              function: () {},
              image: "${ImageAssets.parent}",
              text: "Add Student's\nguardlan"),
          CustomContainerInGridView(
              function: () {},
              image: "${ImageAssets.teacher}",
              text: "Follow ypur\nassestants"),
        ],
      ),
    );
  }
}
