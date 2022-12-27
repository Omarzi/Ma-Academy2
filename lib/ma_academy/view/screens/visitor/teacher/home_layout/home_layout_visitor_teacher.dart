import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../../core/color_manager.dart';
import '../activity/activity.dart';
import '../calender/calender.dart';
import '../courses/courses_visitor_teacher.dart';
import '../home/home_screen.dart';
import '../profile/profile_visitor_teacher.dart';

class LayoutScreenVisitorTeacher extends StatefulWidget {
  static const String routeName = 'LayoutScreenVisitorTeacher';

  const LayoutScreenVisitorTeacher({super.key});

  @override
  State<LayoutScreenVisitorTeacher> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreenVisitorTeacher> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    CoursesVisitorTeacher(),
    ActivityScreenVisitorTeacher(),
    CalenderVisitorTeacher(),
    ProfilScreenVisitorTeacher(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: ColorManager.primary,
        onTap: (value) {
          setState(
            () {
              currentIndex = value;
            },
          );
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Add Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
