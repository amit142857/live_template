import 'package:flutter/material.dart';
import 'package:live_template/Customwidget.dart';
import 'Timecounter.dart';
import 'clock.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Here"),
      ),
      body: Container(
          padding: EdgeInsets.all(32),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Custom()
                ],
              )
            ],
          )),
    );
  }
}
