import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double _x;
  double _y;
  double _z;



  @override
  void initState() {
    _x = 0.0;
    _y = 0.0;
    _z = 0.0;
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
              Row(
                children:<Widget> [
                  Text("X"),
                  Slider(
                    value: _x,
                    onChanged: (double value) => setState(() => _x = value))
                ],
              ),
              Row(
                children:<Widget> [
                  Text("Y"),
                  Slider(
                      value: _y,
                      onChanged: (double value) => setState(() => _y = value))
                ],
              ),
              Row(
                children:<Widget> [
                  Text("Z"),
                  Slider(
                      value: _z,
                      onChanged: (double value) => setState(() => _z = value))
                ],
              ),
              Transform(
                transform: Matrix4.skewY(_y),
                child: Transform(
                  transform: Matrix4.skewX(_x),
                  child: Transform(
                    transform: Matrix4.rotationZ(_z),
                    child: Padding(padding: EdgeInsets.all(10),
                    child: Text("Transformed Text"),
                    ),
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}