import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddProductTextFieldWidget extends StatelessWidget {
  AddProductTextFieldWidget(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $hintText';
          }
          return null;
        },
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
