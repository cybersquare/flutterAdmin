import 'package:cs_ecomm/dashboard/widgets/chart.dart';
import 'package:cs_ecomm/dashboard/widgets/line_chart.dart';
import 'package:cs_ecomm/dashboard/widgets/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesAnalysis extends StatelessWidget {
  const SalesAnalysis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'Todays sale',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            subtitle: Text(
              '\$200',
              style: TextStyle(
                fontSize: 0.05.sw,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          LineChart(),
          Piechart(),
          ChartPage(),
        ],
      ),
    );
  }
}
