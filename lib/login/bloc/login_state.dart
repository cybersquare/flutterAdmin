part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class NavigateToLogin extends LoginState {}

class NavigateToHome extends LoginState {}

class InvalidLogin extends LoginState {}


