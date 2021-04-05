import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _turns;
  double _value;


  @override
  void initState() {
    _turns = 0;
    _value = 0.0;
  }

  void _onChanged(double value) {
    setState(() {
      _value = value;
      _turns = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Slider(
                value: _value,
                onChanged: _onChanged,
                min: 0.0,
                max: 80.0,
              ),
              RotatedBox(
                quarterTurns: _turns,
                child: Text("Hello world")
              )
            ],
          ),
        ),
      ),
    );
  }
}