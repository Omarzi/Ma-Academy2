// ignore_for_file: depend_on_referenced_packages, must_be_immutable

import 'package:flutter/material.dart';
import 'package:ma_academy/core/color_manager.dart';
import 'package:ma_academy/ma_academy/business_logic/auth/login-cubit/login_cubit.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFormField extends StatelessWidget {
  Function validator;
  Function onChanged;
  final TextEditingController? textEditingController;
  final TextInputType textInputType;
  bool isPasswordField;
  bool isObscureText;

  bool check;

  CustomTextFormField({
    Key? key,
    required this.validator,
    required this.onChanged,
    this.textEditingController,
    required this.textInputType,
    this.isPasswordField = false,
    this.isObscureText = true,
    this.check = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        LoginCubit cubit = LoginCubit.get(context);
        return TextFormField(
          validator: (value) => validator(value),
          onChanged: (value) => onChanged(value),
          controller: textEditingController,
          keyboardType: textInputType,
          obscureText: isPasswordField == true
              ? !cubit.visiblePassword
              : check == true
                  ? !cubit.pass
                  : false,
          cursorColor: ColorManager.blackColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorManager.grey,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.w,
                color: ColorManager.lightGrey,
              ),
              borderRadius: BorderRadius.circular(50.0.sp),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.w,
                color: ColorManager.lightGrey,
              ),
              borderRadius: BorderRadius.circular(50.0.sp),
            ),
          ),
        );
      },
    );
  }
}
