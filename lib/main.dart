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
  int _value1 = 0;
  int _value2 = 0;

  void _Setvalue1(int value) => setState(() => _value1 = value);
  void _Setvalue2(int value) => setState(() => _value2 = value);

  Widget makeRadios() {
    List <Widget> list = List<Widget>();

    for (int i=0; i < 3; i++){
      list.add(new Radio(
        value:i ,
        groupValue: _value1 ,
        onChanged: _Setvalue1,
        activeColor: Colors.red,
        focusColor: Colors.blue,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        mouseCursor: MouseCursor.defer,
      ));
    }

    Column column = new Column(children: list);
    return column;
  }

  Widget makeRadiotiles() {
    List <Widget> list = List<Widget>();

    for (int i=0; i < 3; i++){
      list.add(new RadioListTile(
        value:i ,
        groupValue: _value2 ,
        onChanged: _Setvalue2,
        subtitle: Text("Human"),
        title: Text("H"),
        secondary: Icon(Icons.person),
      ));
    }

    Column column = new Column(children: list);
    return column;
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
              makeRadios(),
              makeRadiotiles()
            ],
          ),
        ),
      ),
    );
  }
}


