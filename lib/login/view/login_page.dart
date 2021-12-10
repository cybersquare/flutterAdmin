import 'package:cs_ecomm/login/bloc/login_bloc.dart';
import 'package:cs_ecomm/login/view/widget/text_field.dart';
import 'package:cs_ecomm/router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final LoginBloc _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginBloc,
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          print('state');
          if (state is NavigateToHome) {
            Navigator.pushNamed(context, RouteConstants.dashboardRoute);
          } else {
            showTopSnackBar(
              context,
              const CustomSnackBar.error(
                message: 'The email or password you enterd is incorrect',
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 180),
                      child: Image.asset('assets/images/cs_ecom_logo.png'),
                    ),
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    UserTextField(
                      loginBloc: _loginBloc,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
