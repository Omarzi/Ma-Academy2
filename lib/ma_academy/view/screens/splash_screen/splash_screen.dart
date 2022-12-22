import 'package:flutter/material.dart';
import '../../widgets/custom_splash_screen/custom_splah_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splashScreen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomSplashScreen(),
    );
  }
}
