import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final FirebaseAuth authentication = FirebaseAuth.instance;
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>(
      (event, emit) async {
        if (event is LoginWithEmailAndPassword) {
          // try {
          print("try bloc working");
          print(event.email);
          print(event.password);
          final userdetais = await authentication.signInWithEmailAndPassword(
            email: event.email,
            password: event.password,
          );

          print("Login finished");
          print(userdetais);

          emit(NavigateToHome());
          // } catch (e) {
          //   print("Exception occured");
          //   emit(InvalidLogin());
          // }
        }
      },
    );
  }
}
