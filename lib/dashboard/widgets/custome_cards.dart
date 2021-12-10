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
        color: Colors.amber,
        child: ListTile(
          title: Text(title),
          subtitle: Text(number.toString()),
          onTap: () => ontap,
        ),
      ),
    );
  }
}
