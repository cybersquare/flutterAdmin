import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  LineChart({Key? key}) : super(key: key);

  @override
  _LineChartState createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SfCartesianChart(
        title: ChartTitle(
          text: 'Total Year Growth',
          textStyle: const TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        primaryXAxis: CategoryAxis(),
        series: <ChartSeries>[
          LineSeries<SalesData, String>(
              dataSource: [
                SalesData('Jan', 15, Colors.red),
                SalesData('Feb', 28, Colors.green),
                SalesData('Mar', 34, Colors.blue),
                SalesData('Apr', 38, Colors.pink),
                SalesData('May', 40, Colors.greenAccent),
                SalesData('Jun', 47, Colors.yellow),
                SalesData('July', 55, Colors.amber),
                SalesData('Aug', 59, Colors.orange),
                SalesData('Sep', 60, Colors.greenAccent),
                SalesData('Oct', 65, Colors.lightBlue),
                SalesData('Nov', 70, Colors.red),
                SalesData('Dec', 75, Colors.black),
              ],
              // Bind the color for all the data points from the data source
              pointColorMapper: (SalesData sales, _) => sales.segmentColor,
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales)
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales, this.segmentColor);
  final String year;
  final double sales;
  final Color segmentColor;
}
