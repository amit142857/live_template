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
  String _value = "Nothing yet";

  void _onPressed() => setState(() => _value = DateTime.now().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name Here"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Text(_value),
              IconButton(
                icon: Icon(Icons.access_time),
                onPressed: _onPressed,
                color: Colors.blue,
                iconSize: 50,
                tooltip: "Show date and time",
              )
            ],
          ),
        ),
      ),
    );
  }
}

