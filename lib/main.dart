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

class _MyAppState extends State<MyApp> {

  Future _showalert(BuildContext context, String message) async{
    return showDialog(
      context: context,
      // ignore: deprecated_member_use
      child: AlertDialog(
        title: Text(message),
        scrollable: true,
        content: Text("The battery health of your phone is very very low, please change it ASAP"),
        actions: [
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Close alert"),
          )
        ],
      )
    );
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
              RaisedButton(
                onPressed:() => _showalert(context, "Battery!!"),
                child: Text("Show alert"),
              )
            ],
          ),
        ),
      )

    );
  }


}
