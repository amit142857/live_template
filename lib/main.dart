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
    int _value = 0;

    void _add() => setState(() => _value++);
    void _sub() => setState(() => _value--);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Name here"),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _add,
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: _sub,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Text(_value.toString(),
              style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.bold
              ),
              ),

            ],
          ),
        ),
      )

    );
  }
}
