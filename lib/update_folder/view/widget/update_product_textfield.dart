import 'package:flutter/material.dart';

class UpdateProductTextField extends StatelessWidget {
  UpdateProductTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);
  TextEditingController controller;
  String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(height: .15),
      keyboardType: TextInputType.text,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
