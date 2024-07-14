import 'package:flutter/material.dart';
// import 'package:managment/data/model/add_date.dart';
// import 'package:managment/data/utlity.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {
  Chart({Key? key,}) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <SplineSeries<SalesData, String>>[
          SplineSeries<SalesData, String>(
            color: Color.fromARGB(255, 47, 125, 121),
            width: 3,
            dataSource: <SalesData>[
              SalesData('Mon',100),
              SalesData('Tue',20),
              SalesData('Wed',40),
              SalesData('Thu',15),
              SalesData('Fri',5),
              SalesData('Sat',100),
              SalesData('Sun',100),
            ],
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
          )
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final int sales;
}