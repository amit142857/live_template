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
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);

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
              Text("Value: ${(_value*100).round()}"),
              Slider(
                value: _value,
                onChanged: _setvalue,
                divisions: 20,
                activeColor: Colors.pinkAccent,
                autofocus: true,

              )
            ],
          ),
        ),
      ),
    );
  }
}
