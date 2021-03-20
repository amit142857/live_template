import 'package:flutter/material.dart';
import 'package:live_template/Screens/second.dart';

class Third extends StatefulWidget {
  @override
  _ThirdState createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third page"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Text("Welcome to Third page"),
              RaisedButton(onPressed: () {
                if(Navigator.of(context).canPop()){
                  Navigator.of(context).pop();
                } else {
                  Navigator.of(context).pushNamed("/Second");
                }
              },
                  child: Text("Back")),
            ],
          ),
        ),
      ),
    );
  }
}