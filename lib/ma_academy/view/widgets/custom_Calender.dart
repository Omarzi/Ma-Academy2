import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../core/values_manager.dart';

class CustomCalender extends StatefulWidget {
  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focuseDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return content();
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
