import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashbordUI extends StatelessWidget {
  const DashbordUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: const Text(
              'Todays sale',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green),
            ),
            subtitle: Text(
              '\$200',
              style: TextStyle(fontSize: 20.sw),
              textAlign: TextAlign.center,
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
