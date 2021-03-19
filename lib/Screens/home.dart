import 'package:flutter/material.dart';
import 'package:live_template/Screens/second.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              Text("Welcome to the Home"),
              RaisedButton(onPressed:() => Navigator.of(context).pushNamed("/Second"),
                  child: Text("Next")),
            ],
          ),
        ),
      ),
    );
  }
}
