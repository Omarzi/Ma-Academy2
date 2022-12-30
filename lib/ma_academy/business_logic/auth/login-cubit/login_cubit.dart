// ignore_for_file: avoid_print, depend_on_referenced_packages

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ma_academy/core/end_point.dart';
import 'package:ma_academy/domain/data/local/my_cache.dart';
import 'package:ma_academy/domain/data/local/my_cache_keys.dart';
import 'package:ma_academy/domain/data/remote/dio_helper.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  bool visiblePassword = false;
  bool pass = false;

  final DioHelper dioHelper = DioHelper();

  void changePasswordVisibity() {
    visiblePassword = !visiblePassword;
    emit(PasswordVisibilityState());
  }

  void changePasswordVisibityForRegister() {
    pass = !pass;
    emit(PasswordVisibilityState());
  }

  void signIn({
    required String phone,
    required String password,
    required BuildContext context,
  }) {
    emit(LoginLoadingState());
    log('Login Success======================');
    dioHelper.postData(endPoint: login, body: {
      "phone": phone,
      "password": password,
    }).then((value) {
      print('===============');
      print(value.data);
      print('===============');
      if (value.data == null) {
        emit(LoginErrorState(error: 'Something Error because Data is Null'));
      } else if (value.data != null) {
        MyCache.putString(key: MyCacheKeys.token, value: value.data['token']);
        MyCache.putString(key: MyCacheKeys.myUserName, value: value.data['username']);
        // emit(LoginSuccessState(loginModel: LoginModel.fromJson(value.data)));
      } else {
        emit(LoginErrorState(error: 'Invalid Data'));
      }
    }).catchError((error) {
      print(error);
      emit(LoginErrorState(error: "Some Thing Error in Catch Error"));
    });
  }

}
