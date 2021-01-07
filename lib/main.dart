import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Card(
                child: Container(
                  padding: EdgeInsets.all(32),
                  child: Column(
                    children:<Widget> [
                      Text("Hey guys "),
                      SizedBox(
                        height: 200,
                      ),
                      Text("This is second line"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )

    );
  }


}
