import 'package:cs_ecomm/login/bloc/login_bloc.dart';
import 'package:cs_ecomm/router/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final TextEditingController _email = TextEditingController(text: ''),
      _password = TextEditingController(text: '');
  final LoginBloc _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginBloc,
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          print(state);
          if (state is NavigateToHome) {
            Navigator.pushNamed(context, RouteConstants.dashboardRoute);
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: Center(
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 50,
                      bottom: 20,
                    ),
                    child: TextField(
                      controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      bottom: 20,
                    ),
                    child: TextField(
                      controller: _password,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _loginBloc.add(
                        LoginWithEmailAndPassword(
                          email: _email.text,
                          password: _password.text,
                        ),
                      );
                    },
                    child: const Text('Login'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
