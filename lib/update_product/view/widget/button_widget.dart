import 'package:flutter/material.dart';

class UpdateProductButtonWidget extends StatelessWidget {
  UpdateProductButtonWidget({
    Key? key,
    required this.buttonText,
    required this.onPressFun,
    required this.btnColor,
    required this.quantity,
    required this.description,
    required this.price,
    required this.productName,
    required this.productId,
  }) : super(key: key);
  String buttonText;
  Function onPressFun;
  Color btnColor;
  String productName;
  String productId;
  String description;
  String price;
  String quantity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: btnColor),
        onPressed: () {
          onPressFun();
        },
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
