import 'package:flutter/material.dart';

class AddProductTextFieldWidget extends StatelessWidget {
  const AddProductTextFieldWidget(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);
  final TextEditingController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        style: const TextStyle(height: .15),
        keyboardType: TextInputType.text,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
