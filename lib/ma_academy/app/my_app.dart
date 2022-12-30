// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ma_academy/ma_academy/business_logic/auth/login-cubit/login_cubit.dart';
import 'package:ma_academy/ma_academy/business_logic/auth/register-cubit/register_cubit.dart';
import 'package:ma_academy/ma_academy/view/screens/splash_screen/splash_screen.dart';
import 'package:ma_academy/ma_academy/view/screens/visitor/teacher/home_layout/home_layout_visitor_teacher.dart';
import 'package:sizer/sizer.dart';

import '../view/modules/bottom_nav_bar.dart';
import '../view/screens/check_screen/check_screen.dart';
import '../view/screens/login_screen/login_screen.dart';
import '../view/screens/on_bording/on_boarding_parents.dart';
import '../view/screens/on_bording/on_boarding_teacher.dart';
import '../view/screens/on_bording/on_bording_student.dart';
import '../view/screens/register_screen/choose_turn/choose_turn.dart';
import '../view/screens/register_screen/register_screen.dart';
import '../view/screens/visitor/student/home/home_design_course.dart';
import '../view/screens/visitor/student/profile/profile.dart';
import '../view/screens/visitor/teacher/home/home_screen.dart';
import '../view/screens/visitor/type_visitor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MaAcademy extends StatelessWidget {
  var theme = ValueNotifier(ThemeMode.dark);

  MaAcademy({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => LoginCubit(),
            ),
            BlocProvider(
              create: (context) => RegisterCubit(),
            ),
          ],
          child: ValueListenableBuilder<ThemeMode>(
            valueListenable: theme,
            builder: (context, value, child) => MaterialApp(
              theme: ThemeData(
                textTheme: GoogleFonts.aBeeZeeTextTheme(
                  Theme.of(context).textTheme,
                ),
              ),
              initialRoute: SplashScreen.routeName,
              routes: {
                SplashScreen.routeName: (context) => const SplashScreen(),
                LayoutScreenVisitorTeacher.routeName: (context) =>
                    LayoutScreenVisitorTeacher(),
                CheckScreen.routeName: (context) => const CheckScreen(),
                HomeScreen.routName: (context) => HomeScreen(),
                ProfilScreen.routName: (context) => const ProfilScreen(),
                LoginScreen.routeName: (context) => LoginScreen(),
                RegisterScreen.routeName: (context) => RegisterScreen(),
                Choose_turn.routeName: (context) => Choose_turn(),
                VisitorType.routeName: (context) => VisitorType(),
                OnBoardingStudent.routeName: (context) => OnBoardingStudent(),
                OnBoardingTeacher.routeName: (context) => OnBoardingTeacher(),
                OnBoardingParents.routeName: (context) => OnBoardingParents(),
                LayoutScreen.routeName: (context) => LayoutScreen(),
                DesignCourseHomeScreen.routeName: (context) =>
                    DesignCourseHomeScreen(),
                ProfilScreen.routName: (context) => ProfilScreen(),
              },
            ),
          ),
        );
      },
    );
  }
}
