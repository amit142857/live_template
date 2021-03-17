import 'package:flutter/material.dart';
import 'package:live_template/Customwidget.dart';
import 'Timecounter.dart';
import 'authenticator.dart';
import 'clock.dart';

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

  bool _isAuthenticated;
  void _OnAuthenticated(bool value){
    setState(() {
      _isAuthenticated = value;
    });
  }


  @override
  void initState() {
    _isAuthenticated = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authencticator"),
        centerTitle: true,
      ),
      body: Container(
          padding: EdgeInsets.all(32),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Authenticator(OnAuthenticated: _OnAuthenticated),
                  Text("Authenticated: ${_isAuthenticated}")
                ],
              )
            ],
          )),
    );
  }
}
