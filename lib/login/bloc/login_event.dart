part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginWithEmailAndPassword extends LoginEvent {
  LoginWithEmailAndPassword({required this.email, required this.password});
  String email;
  String password;
}
