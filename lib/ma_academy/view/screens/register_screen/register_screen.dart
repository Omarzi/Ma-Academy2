// ignore_for_file: depend_on_referenced_packages, no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/font_manager.dart';
import 'package:ma_academy/ma_academy/business_logic/auth/register-cubit/register_cubit.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_button/custom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/custom_button/custom_radio_button.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = 'RegisterScreen';

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? phoneController;

  TextEditingController? checkController;

  final GlobalKey<FormState> registerKey = GlobalKey<FormState>();

  String? username, phone, email, password, check;

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode _fieldNode = FocusNode();
    return BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(7.h),
              child: CustomAppBar(
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                title: const Text(''),
              ),
            ),
            body: Form(
              key: registerKey,
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 100.w,
                          height: 20.h,
                          child: Image.asset(
                            ImageAssets.splashLogo,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Sign Up : ',
                              style: TextStyle(
                                fontSize: FontSize.s22,
                                color: ColorManager.primary,
                                fontWeight: FontWeightManager.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Card(
                          elevation: 10,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Full Name :',
                                  style: TextStyle(
                                    fontSize: FontSize.s14,
                                    fontWeight: FontWeightManager.w400,
                                  ),
                                ),
                                TextFormField(
                                  cursorColor: ColorManager.primary,
                                  decoration: InputDecoration(
                                    enabledBorder: const UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: ColorManager.primary,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  'Phone Number :',
                                  style: TextStyle(
                                    fontSize: FontSize.s14,
                                    fontWeight: FontWeightManager.w400,
                                  ),
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.phone,
                                  cursorColor: ColorManager.primary,
                                  validator: (value) {
                                    if (value!.length < 11 || value.length > 11) {
                                      return 'Please Enter 11 Digits';
                                    }
                                  },
                                  onChanged: (value) {
                                    email = value;
                                  },
                                  decoration: InputDecoration(
                                    enabledBorder: const UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: ColorManager.primary,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  'Email :',
                                  style: TextStyle(
                                    fontSize: FontSize.s14,
                                    fontWeight: FontWeightManager.w400,
                                  ),
                                ),
                                TextFormField(
                                  cursorColor: ColorManager.primary,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please Enter Your Email';
                                    } else if (!RegExp(
                                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[com]")
                                        .hasMatch(value)) {
                                      return 'Please Enter Valid as example@gmail.com';
                                    }
                                  },
                                  onChanged: (value) {
                                    email = value;
                                  },
                                  decoration: InputDecoration(
                                    enabledBorder: const UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: ColorManager.primary,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.h),
                                Text(
                                  'Male / Female ? ',
                                  style: TextStyle(
                                    fontSize: FontSize.s14,
                                    fontWeight: FontWeightManager.w400,
                                  ),
                                ),
                                MyStatefulWidget(),
                                SizedBox(height: 2.h),
                                Text(
                                  'Password :',
                                  style: TextStyle(
                                    fontSize: FontSize.s14,
                                    fontWeight: FontWeightManager.w400,
                                  ),
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.visiblePassword,
                                  cursorColor: ColorManager.primary,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please Enter Your Password';
                                    } else if (value.length < 3) {
                                      return 'Please Confirm Password is Week';
                                    }
                                  },
                                  onChanged: (value) {
                                    password = value;
                                  },
                                  decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.remove_red_eye,
                                        size: 18.sp,
                                        color: _fieldNode.hasFocus
                                            ? ColorManager.primary
                                            : Colors.black,
                                      ),
                                    ),
                                    enabledBorder: const UnderlineInputBorder(),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: ColorManager.primary,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 4.h),
                                CustomButton(
                                  onPressd: () {
                                    if (registerKey.currentState!.validate()) {
                                      Navigator.pushNamed(
                                          context, 'loginScreen');
                                    }
                                  },
                                  bgColor: ColorManager.primary,
                                  text: 'Login',
                                  color: ColorManager.whiteColor,
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('Or'),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                CustomButton(
                                  onPressd: () {
                                    Navigator.pushNamed(
                                        context, 'signupScreen');
                                  },
                                  bgColor:
                                      ColorManager.whiteColor.withOpacity(0.8),
                                  text: 'Sign Up',
                                  color: const Color(0xFF4B4B4B),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
