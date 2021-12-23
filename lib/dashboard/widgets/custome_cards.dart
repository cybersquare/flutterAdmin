import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeCards extends StatelessWidget {
  CustomeCards({
    Key? key,
    required this.number,
    required this.title,
    required this.ontap,
    required this.color,
  }) : super(key: key);
  String title;
  int number;
  Function ontap;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        elevation: 0,
        color: color,
        child: Center(
          child: ListTile(
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(number.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            onTap: () => ontap(),
          ),
        ),
      ),
    );
  }
}
