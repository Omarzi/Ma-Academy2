part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {
  // LoginModel loginModel;
  // LoginSuccessState({required this.loginModel});
}

class LoginErrorState extends LoginState {
  String error;
  LoginErrorState({required this.error});
}

class PasswordVisibilityState extends LoginState {}

class LogoutLoadingState extends LoginState {}

class LogoutSuccessState extends LoginState {}
