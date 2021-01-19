import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

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

  class Area {
  int index;
  Color color;
  String name;

  Area({this.index: -1, this.color: Colors.blue, this.name: "Area"});
}

class _MyAppState extends State<MyApp> {

  int _location;
  List<Area> _areas;


  @override
  void initState() {
    _areas = List<Area>();
    for (int i = 0; i < 16; i++){
      _areas.add(Area(
        index: i,
        name: "Area ${i}",
      ));
    }
    var rng = Random();
    _location = rng.nextInt(_areas.length);
  }

  Widget _generate(int index) {
    return GridTile(
      child: Container(
        padding: EdgeInsets.all(5),
        child: RaisedButton(
          onPressed:() => _onPressed(index),
          color: _areas[index].color,
          child: Text(_areas[index].name, textAlign: TextAlign.center,),
        ),
      ),
    );
  }

  void _onPressed(int index) {
    setState(() {
      if (index == _location){
        _areas[index].color = Colors.green;
      } else {
        _areas[index].color = Colors.red;
      }
    });
    debugPrint("$_location");
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
            child: GridView.count(
              crossAxisCount: 4,
              children:
                List<Widget>.generate(16, _generate)
            ),
          )
      ),
    );
  }
}
