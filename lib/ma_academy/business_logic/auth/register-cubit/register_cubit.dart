// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ma_academy/core/end_point.dart';
import 'package:ma_academy/domain/data/remote/dio_helper.dart';
import 'package:dio/dio.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  bool visiblePassword = false;
  bool visibleConfirmPassword = false;

  final DioHelper dioHelper = DioHelper();

  /// function to change password visibility
  void changePasswordVisibility() {
    visiblePassword = !visiblePassword;
    emit(VisiblePasswordState());
  }

  /// function to change password visibility
  void changeConfirmPasswordVisibility() {
    visibleConfirmPassword = !visibleConfirmPassword;
    emit(VisibleConfirmPasswordState());
  }

  signup({
    required String username,
    required String email,
    required String password,
    required String confirmPassword,
    required String phone,
    required BuildContext context,
  }) async {
    emit(RegisterLoadingState());
    try {
      Response response =
          await dioHelper.postData(endPoint: register, body: {
        "username": username,
        "email": email,
        "phone": phone,
        "password": password,
        // "confirmPassword": confirmPassword,
      });
      if (response.data['name'] != null) {
        emit(RegisterSuccessState());
      } else {
        emit(RegisterErrorState(error: response.data['message']));
      }
      return response.data;
    } catch (e) {
      emit(RegisterErrorState(error: "Any Error"));
    }
  }
}
