import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/values_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../widgets/custom_app_bar/custom_app_bar.dart';

class Calender extends StatefulWidget {
  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focuseDay) {
    setState(() {
      today = day;
    });
  }

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
            title: const Text(
              'Calender',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: content());
  }

  Widget content() {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: Column(
        children: [
          Card(
              elevation: 3.sp,
              child: TableCalendar(
                locale: "en_us",
                rowHeight: 43,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                onDaySelected: _onDaySelected,
              ))
        ],
      ),
    );
  }
}
