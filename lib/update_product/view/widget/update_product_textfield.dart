import 'package:flutter/material.dart';

class UpdateProductTextField extends StatelessWidget {
  UpdateProductTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.maxLine,
  }) : super(key: key);
  TextEditingController controller;
  String hintText;
  int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(height: .15),
      keyboardType: TextInputType.text,
      controller: controller,
      cursorColor: Colors.black,
      cursorWidth: 3,
      decoration: InputDecoration(
        labelText: hintText,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
