import 'package:cs_ecomm/login/login.dart';
import 'package:flutter/material.dart';

class UserTextField extends StatelessWidget {
  UserTextField({Key? key, required this.loginBloc}) : super(key: key);
  final TextEditingController _email = TextEditingController(text: ''),
      _password = TextEditingController(text: '');
  final LoginBloc loginBloc;

  final _myform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 30,
            right: 30,
            top: 100,
            bottom: 20,
          ),
          child: Form(
            key: _myform,
            autovalidate: false,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email cant be blank';
                      }
                      return null;
                    },
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password cant be blank';
                    }
                    return null;
                  },
                  controller: _password,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (_myform.currentState!.validate() == false) {
              print('Process data');
            } else {
              loginBloc.add(
                LoginWithEmailAndPassword(
                    email: _email.text, password: _password.text),
              );
            }
          },
          child: const Text('Login'),
        )
      ],
    );
  }
}
