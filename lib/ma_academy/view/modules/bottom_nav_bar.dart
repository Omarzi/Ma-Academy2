import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ma_academy/ma_academy/view/screens/home/home_design_course.dart';
import 'package:ma_academy/ma_academy/view/screens/profile/profile.dart';

class LayoutScreen extends StatefulWidget {
  static const String routeName = 'moduleScreen';

  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const DesignCourseHomeScreen(),
    const ProfilScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
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
            icon: Icon(Icons.more_horiz),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
