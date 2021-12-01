import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial());
  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    if (event is SplashStartEvent) {
      if (FirebaseAuth.instance.currentUser == null) {
        await Future<dynamic>.delayed(const Duration(seconds: 2));
        print(event);
        yield SplashNavigateToLogin();
      } else {
        await Future<dynamic>.delayed(const Duration(seconds: 2));
        print(event);
        yield SplashNavigateToHome();
      }
    }
  }
}
