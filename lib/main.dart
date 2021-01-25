import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home:new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class Sales{
  int year;
  int sales;
  charts.Color color;
  Sales(this.year, this.sales, this.color);
}

class _MyAppState extends State<MyApp> {

  List<Sales> _data;
  List<charts.Series<Sales, int>> _chartdata;


  void _makeData() {
    _chartdata = new List<charts.Series<Sales, int>>();
    _data = <Sales>[
      new Sales(0, 100, charts.MaterialPalette.red.shadeDefault),
      new Sales(1, 300, charts.MaterialPalette.green.shadeDefault),
      new Sales(2, 200, charts.MaterialPalette.pink.shadeDefault),
      new Sales(3, 120, charts.MaterialPalette.gray.shadeDefault),
    ];

    _chartdata.add(new charts.Series(
     id: "Sales",
     data: _data,
     colorFn: (Sales sales, __) => sales.color,
      domainFn: (Sales sales, __) => sales.year,
      measureFn: (Sales sales, __) => sales.sales,
    ));

  }


  @override
  void initState() {
    _makeData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Name Here"),
      ),
      body:new Container(
          padding:new EdgeInsets.all(5),
        child: Center(
          child: Column(
            children:<Widget> [
              Text("Sales Data"),
              Expanded(
                child: charts.PieChart<dynamic>(
                  _chartdata,
                  animate: true,
                  animationDuration: Duration(seconds: 5),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
