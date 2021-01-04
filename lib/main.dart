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
    String _value = "";
    void _onClicked(String value) => setState(() => _value = value);


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Name here"),
        backgroundColor: Colors.red,
      ),
      persistentFooterButtons:<Widget> [
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () => _onClicked("Button Home"),
        ),
        IconButton(
          icon: Icon(Icons.person),
          onPressed: () => _onClicked("Button Person"),
        ),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () => _onClicked("Button Setting"),
        ),
      ],
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Text(_value,
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
