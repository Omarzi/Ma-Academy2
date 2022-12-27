import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'custom_card home_visitor.dart';

class customCardBageView extends StatefulWidget {
  const customCardBageView({Key? key}) : super(key: key);

  @override
  State<customCardBageView> createState() => _CardState();
}

class _CardState extends State<customCardBageView> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        3,
        (index) => Container(
              child: Card(
                  elevation: 2.sp,
                  shadowColor: Colors.grey,
                  margin: EdgeInsets.symmetric(
                      horizontal: AppPadding.p8, vertical: AppPadding.p8),
                  child: CustomCardHomeVisitor()),
            ));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20.h,
          child: PageView.builder(
            controller: controller,
            // itemCount: pages.length,
            itemBuilder: (_, index) {
              return pages[index % pages.length];
            },
          ),
        ),
        SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: ScrollingDotsEffect(
              dotColor: Colors.grey.shade400,
              activeDotColor: Colors.blue,
              activeStrokeWidth: 2.6,
              activeDotScale: 1.3,
              maxVisibleDots: 5,
              radius: 5.sp,
              spacing: 2.h,
              dotHeight: 1.h,
              dotWidth: 2.w,
            )),
      ],
    );
  }
}
