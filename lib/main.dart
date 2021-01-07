import 'package:flutter/cupertino.dart';
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
  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();
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
              Text("Please Login"),
              Row(
                children:<Widget> [
                  Text("Username: "),
                  Expanded(
                    child: TextField(
                      controller: _user,
                    ),
                  )
                ],
              ),
              Row(
                children:<Widget> [
                  Text("Password: "),
                  Expanded(
                    child: TextField(
                      controller: _pass,
                      obscureText: true,
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.all(12),
              child: RaisedButton(
                onPressed: () => print("Login ${_user.text}"),
                child: Text("Click me"),
              ),
              ),
            ],
          ),
        ),
      )

    );
  }


}
