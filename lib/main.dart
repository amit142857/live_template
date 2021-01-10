import 'package:flutter/material.dart';

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



    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Name here"),
        backgroundColor: Colors.red,
      ),
      body:ListView(
        // This next line does the trick.
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: 160.0,
            color: Colors.red,
          ),
          Container(
            height: 160.0,
            color: Colors.blue,
          ),
          Container(
            height: 160.0,
            color: Colors.green,
          ),
          Container(
            height: 160.0,
            color: Colors.yellow,
          ),
          Container(
            height: 160.0,
            color: Colors.orange,
          ),
          Container(
            height: 160.0,
            color: Colors.red,
          ),
          Container(
            height: 160.0,
            color: Colors.blue,
          ),
          Container(
            height: 160.0,
            color: Colors.green,
          ),
          Container(
            height: 160.0,
            color: Colors.yellow,
          ),
          Container(
            height: 160.0,
            color: Colors.orange,
          ),
        ],
      )
    );
  }
}
