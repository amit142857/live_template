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
  bool _value1 = false;
  bool _value2 = false;

  void _Setvalue1(bool value) => setState(() => _value1 = value);
  void _Setvalue2(bool value) => setState(() => _value2 = value);

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
              Switch(
                value: _value1,
                onChanged: _Setvalue1,
              ),
              SwitchListTile(
                value: _value2,
                onChanged: _Setvalue2,
                title: Text("Dark mode"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
