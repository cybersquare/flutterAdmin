import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final FirebaseAuth _authentication = FirebaseAuth.instance;
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      if (event is LoginWithEmailAndPassword) {
        try {
          var userDetails = await _authentication.signInWithEmailAndPassword(
            email: event.email,
            password: event.password,
          );
          print('Authentication done');
          print(userDetails);
          if (userDetails == null) {
            print('Login Failed');
          } else {
            emit(NavigateToHome());
          }
        } catch (e) {
          print('login failed');
        }
      }
    });
  }
}
