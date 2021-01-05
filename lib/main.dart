import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

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
 enum Answers{yes, no, maybe}
class _MyAppState extends State<MyApp> {
  String _value = "";
  void _setValue(String value) => setState(() => _value = value);

  Future _askuser() async{
    switch(
    await showDialog(
      context: context,
      // ignore: deprecated_member_use
      child: SimpleDialog(
        title: Text("Babe do you love me?"),
        children:<Widget> [
          SimpleDialogOption(
            child: Text("Yes"),
            onPressed: () => Navigator.pop(context, Answers.yes),
          ),
          SimpleDialogOption(
            child: Text("No"),
            onPressed: () => Navigator.pop(context, Answers.no),
          ),
          SimpleDialogOption(
            child: Text("Maybe"),
            onPressed: () => Navigator.pop(context, Answers.maybe),
          )
        ],
      )
    )
    ){
      case Answers.yes:
        _setValue("Yes");
        break;
      case Answers.no:
        _setValue("No");
        break;
      case Answers.maybe:
        _setValue("Maybe");
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text("Name here"),
        backgroundColor: Colors.red,
      ),


      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children:<Widget> [
              Text(_value),
              RaisedButton(
                onPressed: () => _askuser(),
                child: Text('Show Simple dialog'),
              )
            ],
          ),
        ),
      )

    );
  }


}
