import 'package:flutter/material.dart';
import 'package:live_template/Screens/Third.dart';

import 'home.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Text("Welcome to second page"),
              RaisedButton(onPressed: () => Navigator.of(context).pushNamed("/Third"),
                  child: Text("Next")),
              RaisedButton(onPressed: () => Navigator.of(context).pushNamed("/Home"),
                  child: Text("Back")),
            ],
          ),
        ),
      ),
    );
  }
}
