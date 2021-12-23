import 'package:cs_ecomm/router/route_constants.dart';
import 'package:cs_ecomm/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);
  final SplashBloc _splashBloc = SplashBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _splashBloc..add(SplashStartEvent()),
      child: Scaffold(
        body: BlocConsumer<SplashBloc, SplashState>(
          listener: (context, state) {
            if (state is SplashNavigateToLogin) {
              Navigator.pushNamed(context, RouteConstants.loginRoute);
            } else if (state is SplashNavigateToHome) {
              Navigator.pushNamed(context, RouteConstants.dashboardRoute);
            }
          },
          builder: (context, state) {
            return Center(
              child: Image.asset('assets/images/cs_ecom_logo.png'),
            );
          },
        ),
      ),
    );
  }
}
