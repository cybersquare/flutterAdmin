import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Piechart extends StatelessWidget {
  Piechart({Key? key}) : super(key: key);
  Map<String, double> dataMap = {
    '2018': 3,
    '2019': 2,
    '2020': 5,
    '2021': 5,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: PieChart(
            chartRadius: MediaQuery.of(context).size.width / 2,
            chartType: ChartType.ring,
            dataMap: dataMap,
            ringStrokeWidth: 40,
            centerText: 'Total Users',
            centerTextStyle:
                const TextStyle(color: Colors.greenAccent, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
