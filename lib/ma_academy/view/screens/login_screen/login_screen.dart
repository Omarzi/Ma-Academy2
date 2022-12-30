// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'package:flutter/material.dart';
import 'package:ma_academy/core/assets_manager.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/core/font_manager.dart';
import 'package:ma_academy/ma_academy/business_logic/auth/login-cubit/login_cubit.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_button/custom_button.dart';
import 'package:ma_academy/ma_academy/view/widgets/custom_text_form_field/custom_text_form_field.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'loginScreen';

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? phoneController;

  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  String? email, phone, password;

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode _fieldNode = FocusNode();
    return BlocConsumer<LoginCubit, LoginState>(
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
            key: loginKey,
            child: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300.w,
                        height: 30.h,
                        child: Image.asset(
                          ImageAssets.splashLogo,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Login : ',
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
                                'Phone Number :',
                                style: TextStyle(
                                  fontSize: FontSize.s14,
                                  fontWeight: FontWeightManager.w400,
                                ),
                              ),
                              // CustomTextFormField(
                              //   validator: (value) {
                              //     if (value.isEmpty) {
                              //       return 'Please Enter Your Email';
                              //     } else if (!RegExp(
                              //             "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[com]")
                              //         .hasMatch(value)) {
                              //       return 'Please Enter Valid as example@gmail.com';
                              //     }
                              //   },
                              //   onChanged: (value) {
                              //     email = value;
                              //   },
                              //   textInputType: TextInputType.phone,
                              // ),
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
                                'Password :',
                                style: TextStyle(
                                  fontSize: FontSize.s14,
                                  fontWeight: FontWeightManager.w400,
                                ),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                cursorColor: ColorManager.primary,
                                obscureText: true,
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
                              SizedBox(
                                height: 4.h,
                              ),
                              CustomButton(
                                onPressd: () {
                                  if (loginKey.currentState!.validate()) {
                                    Navigator.pushNamed(
                                        context, 'moduleScreen');
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
                                  Text('Or '),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              CustomButton(
                                onPressd: () {
                                  Navigator.pushNamed(context, 'signupScreen');
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
      },
    );
  }
}
