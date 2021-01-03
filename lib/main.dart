import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

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
  String _value = "";
  Future _selectDate() async{
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2200)
    );
    if (picked != null) setState(() => _value = picked.toString());
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Name here"),
      ),

      body: new Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: new Column(
            children:<Widget> [
              Text("$_value"),
              RaisedButton(
                onPressed: _selectDate,
                child: Text("Select date"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
