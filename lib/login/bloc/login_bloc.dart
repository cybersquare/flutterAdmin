import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final FirebaseAuth _authentication = FirebaseAuth.instance;
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>(
      (event, emit) async {
        if (event is LoginWithEmailAndPassword) {
          try {
            final userDetails =
                await _authentication.signInWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
            emit(NavigateToHome());
          } catch (e) {
            emit(InvalidLogin());
          }
        }
      },
    );
  }
}
