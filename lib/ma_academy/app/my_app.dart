// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ma_academy/ma_academy/view/modules/bottom_nav_bar.dart';
import 'package:ma_academy/ma_academy/view/screens/check_screen/check_screen.dart';
import 'package:ma_academy/ma_academy/view/screens/login_screen/login_screen.dart';
import 'package:ma_academy/ma_academy/view/screens/on_bording/on_boarding_parents.dart';
import 'package:ma_academy/ma_academy/view/screens/on_bording/on_boarding_teacher.dart';
import 'package:ma_academy/ma_academy/view/screens/on_bording/on_bording_student.dart';
import 'package:ma_academy/ma_academy/view/screens/profile/profile.dart';
import 'package:ma_academy/ma_academy/view/screens/register_screen/choose_turn/choose_turn.dart';
import 'package:ma_academy/ma_academy/view/screens/register_screen/register_screen.dart';
import 'package:ma_academy/ma_academy/view/screens/splash_screen/splash_screen.dart';
import 'package:sizer/sizer.dart';

import '../view/screens/home/home_design_course.dart';
import '../view/screens/visitor/type_visitor.dart';

class MaAcademy extends StatelessWidget {
  const MaAcademy({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.aBeeZeeTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          initialRoute: SplashScreen.routeName,
          routes: {
            SplashScreen.routeName: (context) => const SplashScreen(),
            CheckScreen.routeName: (context) => const CheckScreen(),
            LoginScreen.routeName: (context) => const LoginScreen(),
            RegisterScreen.routeName: (context) => const RegisterScreen(),
            Choose_turn.routeName: (context) => Choose_turn(),
            VisitorType.routeName: (context) => VisitorType(),
            OnBoardingStudent.routeName: (context) => OnBoardingStudent(),
            OnBoardingTeacher.routeName: (context) => OnBoardingTeacher(),
            OnBoardingParents.routeName: (context) => OnBoardingParents(),
            LayoutScreen.routeName:(context) => LayoutScreen(),
            DesignCourseHomeScreen.routeName:(context) => DesignCourseHomeScreen(),
            ProfilScreen.routName:(context) => ProfilScreen(),
          },
        );
      },
    );
  }
}
