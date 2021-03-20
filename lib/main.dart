import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:live_template/Screens/home.dart';

import 'Screens/Third.dart';
import 'Screens/second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Navigator",
      routes: <String, WidgetBuilder>{
        //list of all available pages
        "/Home" : (BuildContext context) => Home(),
        "/Second" : (BuildContext context) => Second(),
        "/Third" : (BuildContext context) => Third(),

      },
      home: Home(),  //first page displayed
    );
  }
}



