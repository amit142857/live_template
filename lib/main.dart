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
  double _value = 0;

  void _onChanged(double value) {
    setState(() => _value = value);
  }


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
              Text("Let us know your age"),
              Text("${_value*100} %"),
              Slider(
                value: _value,
                onChanged: _onChanged,
                label: "Age",
                divisions: 50,
              ),
              Container(
                padding: EdgeInsets.all(32),
                child: LinearProgressIndicator(
                  value: _value,
                  backgroundColor: Colors.red,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                )
              ),
              Container(
                padding: EdgeInsets.all(32),
                child: CircularProgressIndicator(
                  value: _value,
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}

