// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ma_academy/ma_academy/view/screens/visitor/teacher/home_layout/home_layout_visitor_teacher.dart';

class OnBoardingTeacher extends StatefulWidget {
  static const String routeName = 'OnBoardingTeacher';

  const OnBoardingTeacher({super.key});
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingTeacher> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LayoutScreenVisitorTeacher()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      autoScrollDuration: 3000,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: _buildImage('logo.png', 100),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "teacher",
          body:
              "The teacher platform enables the teacher to manage all activities and interactions electronically quickly between him and the student",
          image: _buildImage('teach_online.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "teacher",
          body:
              "Example: (electronic reservation and group management - assignments - sheets - reviews - exams - and competitions)",
          image: _buildImage('teach_online.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "teacher",
          body: "Manage direct and other interactive activities with students",
          image: _buildImage('teach_online.png'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      // onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      // rtl: true, // Display as right-to-left
      back: const Icon(
        Icons.arrow_back,
        color: Color(0xFFff5757),
      ),
      skip: const Text('Skip',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFff5757))),
      next: const Icon(Icons.arrow_forward, color: Color(0xFFff5757)),
      done: const Text('Done',
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFff5757))),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeColor: Color(0xFFff5757),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
